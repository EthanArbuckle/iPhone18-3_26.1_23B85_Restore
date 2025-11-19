@interface ASOctaneReceiptEncoder
- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 UTF8String:(int64_t)a6;
- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 data:(int64_t)a6;
- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 integer:(int64_t)a6;
- ($E570233E5C131744623CAF595F5D8D88)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 IA5String:(int64_t)a6;
- (ASOctaneReceiptEncoder)initWithBundleID:(id)a3 bundleVersion:(id)a4 deviceID:(id)a5 transactions:(id)a6;
- (id)_dateFormatter;
- (id)_encodePayload;
- (id)_encodePayloadForIAPReceipt:(id)a3;
- (id)_smallestInt:(int64_t)a3;
- (id)encodeAndSignWithIdentity:(__SecIdentity *)a3 error:(id *)a4;
@end

@implementation ASOctaneReceiptEncoder

- (ASOctaneReceiptEncoder)initWithBundleID:(id)a3 bundleVersion:(id)a4 deviceID:(id)a5 transactions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ASOctaneReceiptEncoder;
  v15 = [(ASOctaneReceiptEncoder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleID, a3);
    objc_storeStrong(&v16->_bundleVersion, a4);
    objc_storeStrong(&v16->_deviceID, a5);
    objc_storeStrong(&v16->_transactions, a6);
  }

  return v16;
}

- (id)_dateFormatter
{
  if (qword_1002BD418 != -1)
  {
    sub_1001F5684();
  }

  v3 = qword_1002BD410;

  return v3;
}

- (id)encodeAndSignWithIdentity:(__SecIdentity *)a3 error:(id *)a4
{
  v5 = [(ASOctaneReceiptEncoder *)self _encodePayload:a3];
  cmsEncoderOut = 0;
  CMSEncoderCreate(&cmsEncoderOut);
  CMSEncoderSetSignerAlgorithm(cmsEncoderOut, kCMSEncoderDigestAlgorithmSHA256);
  CMSEncoderAddSigners(cmsEncoderOut, a3);
  CMSEncoderUpdateContent(cmsEncoderOut, [v5 bytes], objc_msgSend(v5, "length"));
  encodedContentOut = 0;
  v6 = CMSEncoderCopyEncodedContent(cmsEncoderOut, &encodedContentOut);
  if (v6)
  {
    v7 = SecCopyErrorMessageString(v6, 0);
    NSLog(@"Error encoding and signing content: %@", v7);
  }

  v8 = encodedContentOut;
  CFRelease(cmsEncoderOut);

  return v8;
}

- (id)_encodePayload
{
  coder = 0;
  SecAsn1CoderCreate(&coder);
  v3 = [(ASOctaneReceiptEncoder *)self transactions];
  v4 = malloc_type_malloc(8 * [v3 count] + 160, 0x2004093837F09uLL);

  v5 = [(ASOctaneReceiptEncoder *)self transactions];
  bzero(v4, 8 * [v5 count] + 160);

  memset(v56, 0, sizeof(v56));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:0 version:1 UTF8String:"Xcode"];
  *v4 = v56;
  memset(v55, 0, sizeof(v55));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:1 version:1 integer:0];
  v4[1] = v55;
  v54 = 0u;
  memset(v53, 0, sizeof(v53));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:2 version:1 UTF8String:[(NSString *)self->_bundleID UTF8String]];
  v4[2] = v53;
  memset(v52, 0, sizeof(v52));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:3 version:1 UTF8String:[(NSString *)self->_bundleVersion UTF8String]];
  v4[3] = v52;
  v6 = arc4random();
  v51 = arc4random() | (16 * v6);
  v7 = 8;
  v8 = [NSData dataWithBytes:&v51 length:8];
  memset(v50, 0, sizeof(v50));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:4 version:1 data:v8];
  v4[4] = v50;
  v9 = [(ASOctaneReceiptEncoder *)self deviceID];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"-" withString:&stru_100296B10];

  v40 = v10;
  v11 = [NSMutableData oct_dataWithHexString:v10];
  v41 = v8;
  [v11 appendData:v8];
  v12 = [NSData dataWithBytes:*(&v54 + 1) length:v54];
  [v11 appendData:v12];

  CC_SHA1([v11 bytes], objc_msgSend(v11, "length"), md);
  memset(v49, 0, sizeof(v49));
  v13 = coder;
  v14 = [NSData dataWithBytes:md length:20];
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:v13 type:5 version:1 data:v14];

  v4[5] = v49;
  memset(v48, 0, sizeof(v48));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:8 version:1 IA5String:""];
  v4[6] = v48;
  v15 = [(ASOctaneReceiptEncoder *)self _dateFormatter];
  memset(v47, 0, sizeof(v47));
  v16 = coder;
  v17 = +[NSDate now];
  v18 = [v15 stringFromDate:v17];
  -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:IA5String:](self, "_receiptAttributeWithCoder:type:version:IA5String:", v16, 12, 1, [v18 UTF8String]);

  v4[7] = v47;
  v19 = [(ASOctaneReceiptEncoder *)self transactions];
  v20 = malloc_type_malloc(48 * [v19 count], 0x10100402F876B04uLL);

  v21 = [(ASOctaneReceiptEncoder *)self transactions];
  v22 = [v21 count];

  if (v22)
  {
    v39 = v15;
    v23 = 8;
    v24 = v20;
    do
    {
      v25 = v23;
      v26 = objc_autoreleasePoolPush();
      v27 = [(ASOctaneReceiptEncoder *)self transactions];
      v28 = [v27 objectAtIndexedSubscript:v23 - 8];

      v29 = [(ASOctaneReceiptEncoder *)self _encodePayloadForIAPReceipt:v28];
      [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:17 version:1 data:v29];
      v30 = v44;
      v31 = v46;
      v24[1] = v45;
      v24[2] = v31;
      *v24 = v30;
      v4[v23++] = v24;

      objc_autoreleasePoolPop(v26);
      v32 = [(ASOctaneReceiptEncoder *)self transactions];
      v33 = [v32 count];

      v24 += 3;
    }

    while (v33 > v25 - 7);
    v7 = v23;
    v15 = v39;
  }

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v34 = coder;
  v35 = +[NSDate distantFuture];
  v36 = [v15 stringFromDate:v35];
  -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:IA5String:](self, "_receiptAttributeWithCoder:type:version:IA5String:", v34, 21, 1, [v36 UTF8String]);

  v4[v7] = &v44;
  dest.Data = 0;
  src = v4;
  dest.Length = 0;
  SecAsn1EncodeItem(coder, &src, &unk_1002786B0, &dest);
  v37 = [NSData dataWithBytes:dest.Data length:dest.Length];
  SecAsn1CoderRelease(coder);
  if (v20)
  {
    free(v20);
  }

  free(v4);

  return v37;
}

- (id)_encodePayloadForIAPReceipt:(id)a3
{
  coder = 0;
  v4 = a3;
  SecAsn1CoderCreate(&coder);
  v5 = [v4 objectForKeyedSubscript:@"quantity"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"productID"];
  v8 = [v4 objectForKeyedSubscript:@"transactionID"];
  v9 = [v4 objectForKeyedSubscript:@"originalTransactionDate"];
  v10 = [v4 objectForKeyedSubscript:@"originalTransactionID"];
  v11 = [v4 objectForKeyedSubscript:@"purchaseDate"];
  v27 = [v4 objectForKeyedSubscript:@"subscriptionExpirationDate"];
  v26 = [v4 objectForKeyedSubscript:@"introPeriod"];
  v25 = [v4 objectForKeyedSubscript:@"cancellationDate"];

  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  memset(v39, 0, sizeof(v39));
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:coder type:1701 version:1 integer:v6];
  v41[0] = v39;
  memset(v38, 0, sizeof(v38));
  v28 = v7;
  -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:UTF8String:](self, "_receiptAttributeWithCoder:type:version:UTF8String:", coder, 1702, 1, [v7 UTF8String]);
  v41[1] = v38;
  memset(v37, 0, sizeof(v37));
  -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:UTF8String:](self, "_receiptAttributeWithCoder:type:version:UTF8String:", coder, 1703, 1, [v8 UTF8String]);
  v41[2] = v37;
  v12 = [(ASOctaneReceiptEncoder *)self _dateFormatter];
  memset(v36, 0, sizeof(v36));
  v13 = coder;
  v14 = [v12 stringFromDate:v9];
  -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:IA5String:](self, "_receiptAttributeWithCoder:type:version:IA5String:", v13, 1704, 1, [v14 UTF8String]);

  v41[3] = v36;
  memset(v35, 0, sizeof(v35));
  if (v10)
  {
    -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:UTF8String:](self, "_receiptAttributeWithCoder:type:version:UTF8String:", coder, 1705, 1, [v10 UTF8String]);
    *&v42 = v35;
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  memset(v34, 0, sizeof(v34));
  if (v11)
  {
    v16 = coder;
    v17 = [v12 stringFromDate:v11];
    -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:IA5String:](self, "_receiptAttributeWithCoder:type:version:IA5String:", v16, 1706, 1, [v17 UTF8String]);

    v41[v15++] = v34;
  }

  v18 = 0uLL;
  memset(v33, 0, sizeof(v33));
  if (v27)
  {
    v19 = coder;
    v20 = [v12 stringFromDate:v27];
    -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:IA5String:](self, "_receiptAttributeWithCoder:type:version:IA5String:", v19, 1708, 1, [v20 UTF8String]);

    v18 = 0uLL;
    v41[v15++] = v33;
  }

  v32[1] = v18;
  v32[2] = v18;
  v32[0] = v18;
  if (v25)
  {
    v21 = coder;
    v22 = [v12 stringFromDate:v25];
    -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:IA5String:](self, "_receiptAttributeWithCoder:type:version:IA5String:", v21, 1712, 1, [v22 UTF8String]);

    v41[v15++] = v32;
  }

  memset(v31, 0, sizeof(v31));
  if (v26)
  {
    -[ASOctaneReceiptEncoder _receiptAttributeWithCoder:type:version:integer:](self, "_receiptAttributeWithCoder:type:version:integer:", coder, 1719, 1, [v26 BOOLValue]);
    v41[v15] = v31;
  }

  dest.Data = 0;
  src = v41;
  dest.Length = 0;
  SecAsn1EncodeItem(coder, &src, &unk_1002786B0, &dest);
  v23 = [NSData dataWithBytes:dest.Data length:dest.Length];
  SecAsn1CoderRelease(coder);

  return v23;
}

- ($E570233E5C131744623CAF595F5D8D88)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 IA5String:(int64_t)a6
{
  dest.Length = 0;
  dest.Data = 0;
  v15.Length = 0;
  v15.Data = 0;
  v12 = strlen(a7);
  SecAsn1AllocCopy(a4, a7, v12, &dest);
  SecAsn1EncodeItem(a4, &dest, kSecAsn1IA5StringTemplate, &v15);
  v13 = [NSData dataWithBytes:v15.Data length:v15.Length];
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:a4 type:a5 version:a6 data:v13];

  return result;
}

- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 UTF8String:(int64_t)a6
{
  dest.Length = 0;
  dest.Data = 0;
  v15.Length = 0;
  v15.Data = 0;
  v12 = strlen(a7);
  SecAsn1AllocCopy(a4, a7, v12, &dest);
  SecAsn1EncodeItem(a4, &dest, kSecAsn1UTF8StringTemplate, &v15);
  v13 = [NSData dataWithBytes:v15.Data length:v15.Length];
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:a4 type:a5 version:a6 data:v13];

  return result;
}

- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 integer:(int64_t)a6
{
  dest.Length = 0;
  dest.Data = 0;
  v14.Length = 0;
  v14.Data = 0;
  v11 = [(ASOctaneReceiptEncoder *)self _smallestInt:a7];
  SecAsn1AllocCopy(a4, [v11 bytes], objc_msgSend(v11, "length"), &dest);
  SecAsn1EncodeItem(a4, &dest, kSecAsn1IntegerTemplate, &v14);
  v12 = [NSData dataWithBytes:v14.Data length:v14.Length];
  [(ASOctaneReceiptEncoder *)self _receiptAttributeWithCoder:a4 type:a5 version:a6 data:v12];

  return result;
}

- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)a3 type:(SecAsn1Coder *)a4 version:(int64_t)a5 data:(int64_t)a6
{
  dest.Length = 0;
  dest.Data = 0;
  v20.Length = 0;
  v20.Data = 0;
  v19 = 0;
  v12 = a7;
  v13 = [(ASOctaneReceiptEncoder *)self _smallestInt:a5];
  SecAsn1AllocCopy(a4, [v13 bytes], objc_msgSend(v13, "length"), &dest);
  v14 = [(ASOctaneReceiptEncoder *)self _smallestInt:a6];
  SecAsn1AllocCopy(a4, [v14 bytes], objc_msgSend(v14, "length"), &v20);
  v15 = [v12 bytes];
  v16 = [v12 length];

  SecAsn1AllocCopy(a4, v15, v16, &v19);
  v17 = v20;
  retstr->var0 = dest;
  retstr->var1 = v17;
  retstr->var2 = v19;

  return result;
}

- (id)_smallestInt:(int64_t)a3
{
  v10 = bswap64(a3);
  v3 = &v10;
  v4 = v10;
  if (v10)
  {
    v5 = 8;
LABEL_3:
    v6 = v5 + (v4 >> 7);
    v7 = v3;
  }

  else
  {
    v6 = 8;
    v7 = &v10;
    while (1)
    {
      v5 = v6 - 1;
      if (v6 == 1)
      {
        break;
      }

      v3 = (v7 + 1);
      v4 = *(v7 + 1);
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_4;
      }

      v7 = (v7 + 1);
      --v6;
      v4 = v4;
      if (v4)
      {
        goto LABEL_3;
      }
    }

    v7 = (&v10 + 7);
  }

LABEL_4:
  v8 = [NSData dataWithBytes:v7 length:v6];

  return v8;
}

@end