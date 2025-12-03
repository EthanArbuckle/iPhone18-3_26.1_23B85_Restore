@interface NSMutableURLRequest
- (BOOL)s3_encryptAESWithPlaintext:(id)plaintext ciphertext:(id *)ciphertext key:(id *)key iv:(id *)iv;
- (id)AWSStringToSignWithHTTPVerb:(id)verb contentMD5:(id)d5 contentType:(id)type date:(id)date canonicalizedResource:(id)resource;
- (id)_formatHTTPDate:(id)date;
- (id)_secureRandomOfLength:(unint64_t)length;
- (id)s3_decryptAESWithCiphertext:(id)ciphertext key:(id)key iv:(id)iv;
- (id)s3_encryptPlaintext:(id)plaintext;
- (void)s3_setS3HeadersWithContent:(id)content accessConfig:(id)config;
@end

@implementation NSMutableURLRequest

- (id)_formatHTTPDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  [v4 setDateFormat:@"E, d MMM yyyy HH:mm:ss zzz"];
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

- (id)AWSStringToSignWithHTTPVerb:(id)verb contentMD5:(id)d5 contentType:(id)type date:(id)date canonicalizedResource:(id)resource
{
  resourceCopy = resource;
  typeCopy = type;
  verbCopy = verb;
  v14 = [(NSMutableURLRequest *)self _formatHTTPDate:date];
  resourceCopy = [NSString stringWithFormat:@"%@\n\n%@\n%@\n%@", verbCopy, typeCopy, v14, resourceCopy];

  return resourceCopy;
}

- (id)_secureRandomOfLength:(unint64_t)length
{
  v4 = [NSMutableData dataWithLength:?];
  SecRandomCopyBytes(kSecRandomDefault, length, [v4 mutableBytes]);

  return v4;
}

- (BOOL)s3_encryptAESWithPlaintext:(id)plaintext ciphertext:(id *)ciphertext key:(id *)key iv:(id *)iv
{
  plaintextCopy = plaintext;
  *ciphertext = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [plaintextCopy length] + 16);
  v18 = 0;
  *iv = [(NSMutableURLRequest *)self _secureRandomOfLength:16];
  v11 = [(NSMutableURLRequest *)self _secureRandomOfLength:16];
  *key = v11;
  bytes = [v11 bytes];
  bytes2 = [*iv bytes];
  bytes3 = [plaintextCopy bytes];
  v15 = [plaintextCopy length];

  v16 = CCCrypt(0, 0, 1u, bytes, 0x10uLL, bytes2, bytes3, v15, [*ciphertext mutableBytes], objc_msgSend(*ciphertext, "length"), &v18);
  if (!v16)
  {
    [*ciphertext setLength:v18];
  }

  return v16 == 0;
}

- (id)s3_decryptAESWithCiphertext:(id)ciphertext key:(id)key iv:(id)iv
{
  ivCopy = iv;
  keyCopy = key;
  ciphertextCopy = ciphertext;
  v10 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [ciphertextCopy length]);
  v18 = 0;
  bytes = [keyCopy bytes];

  bytes2 = [ivCopy bytes];
  bytes3 = [ciphertextCopy bytes];
  v14 = [ciphertextCopy length];

  v15 = CCCrypt(1u, 0, 1u, bytes, 0x10uLL, bytes2, bytes3, v14, [v10 mutableBytes], objc_msgSend(v10, "length"), &v18);
  v16 = 0;
  if (!v15)
  {
    [v10 setLength:v18];
    v16 = v10;
  }

  return v16;
}

- (id)s3_encryptPlaintext:(id)plaintext
{
  v4 = [plaintext dataUsingEncoding:4];
  v19 = 0;
  v20 = 0;
  v18 = 0;
  [(NSMutableURLRequest *)self s3_encryptAESWithPlaintext:v4 ciphertext:&v20 key:&v19 iv:&v18];
  v5 = v20;
  v6 = v19;
  v7 = v18;
  v8 = [[NSData alloc] initWithBase64EncodedString:@"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" options:0];
  v9 = SecCertificateCreateWithData(0, v8);
  v10 = SecCertificateCopyKey(v9);
  v11 = [NSMutableData dataWithLength:SecKeyGetBlockSize(v10)];
  cipherTextLen = 0;
  v12 = SecKeyEncrypt(v10, 2u, [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v11, "mutableBytes"), &cipherTextLen);
  NSLog(@"the encrypted things with key [%@] iv [%@]!! result:%d", v6, v7, v12);
  CFRelease(v10);
  [v11 setLength:cipherTextLen];
  v13 = objc_opt_new();
  [v13 appendData:v11];
  NSLog(@"write publicKeyBuffer %lu", [v11 length]);
  [v13 appendData:v7];
  NSLog(@"write iv %lu", [v7 length]);
  [v13 appendData:v5];
  v14 = [v5 length];

  NSLog(@"write ciphertext %lu", v14);
  v15 = [v13 base64EncodedStringWithOptions:0];

  return v15;
}

- (void)s3_setS3HeadersWithContent:(id)content accessConfig:(id)config
{
  contentCopy = content;
  configCopy = config;
  gzipContent = [contentCopy gzipContent];
  content = gzipContent;
  if (!gzipContent)
  {
    content = [contentCopy content];
  }

  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [content length]);
  [(NSMutableURLRequest *)self setValue:v10 forHTTPHeaderField:@"Content-Length"];

  if (!gzipContent)
  {
  }

  mimeType = [contentCopy mimeType];
  [(NSMutableURLRequest *)self setValue:mimeType forHTTPHeaderField:@"Content-Type"];

  gzipContent2 = [contentCopy gzipContent];
  if (gzipContent2)
  {
    [(NSMutableURLRequest *)self setHTTPBody:gzipContent2];
  }

  else
  {
    content2 = [contentCopy content];
    [(NSMutableURLRequest *)self setHTTPBody:content2];
  }

  [(NSMutableURLRequest *)self setHTTPMethod:@"PUT"];
  v14 = objc_opt_new();
  bucket = [contentCopy bucket];
  filename = [contentCopy filename];
  v27 = [(NSMutableURLRequest *)self AWSCanonicalizedResourceWithBucket:bucket FileName:filename];

  mimeType2 = [contentCopy mimeType];
  v18 = [(NSMutableURLRequest *)self AWSStringToSignWithHTTPVerb:@"PUT" contentMD5:0 contentType:mimeType2 date:v14 canonicalizedResource:v27];

  aWSSecretAccessKey = [configCopy AWSSecretAccessKey];
  uTF8String = [aWSSecretAccessKey UTF8String];
  aWSSecretAccessKey2 = [configCopy AWSSecretAccessKey];
  CCHmac(0, uTF8String, [aWSSecretAccessKey2 lengthOfBytesUsingEncoding:4], objc_msgSend(v18, "UTF8String"), objc_msgSend(v18, "lengthOfBytesUsingEncoding:", 4), macOut);

  v22 = [NSData dataWithBytes:macOut length:20];
  v23 = [v22 base64EncodedStringWithOptions:0];

  aWSAccessKeyID = [configCopy AWSAccessKeyID];

  v25 = [NSString stringWithFormat:@"AWS %@:%@", aWSAccessKeyID, v23];

  [(NSMutableURLRequest *)self setValue:v25 forHTTPHeaderField:@"Authorization"];
  v26 = [(NSMutableURLRequest *)self _formatHTTPDate:v14];
  [(NSMutableURLRequest *)self setValue:v26 forHTTPHeaderField:@"Date"];
}

@end