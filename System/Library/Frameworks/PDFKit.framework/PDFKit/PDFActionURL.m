@interface PDFActionURL
- (PDFActionURL)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5;
- (PDFActionURL)initWithURL:(NSURL *)url;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)toolTip;
- (void)commonInit;
- (void)setURL:(NSURL *)URL;
@end

@implementation PDFActionURL

- (PDFActionURL)initWithURL:(NSURL *)url
{
  v5 = url;
  v9.receiver = self;
  v9.super_class = PDFActionURL;
  v6 = [(PDFAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PDFActionURL *)v6 commonInit];
    [(PDFAction *)v7 setType:@"URI"];
    objc_storeStrong(&v7->_private2->url, url);
    v7->_private2->suspiciousURL = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = PDFActionURL;
  v5 = [(PDFAction *)&v12 copyWithZone:?];
  if (v5)
  {
    v6 = objc_alloc_init(PDFActionURLPrivateVars);
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSURL *)self->_private2->url copyWithZone:a3];
    v9 = v5[2];
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    *(v5[2] + 16) = self->_private2->suspiciousURL;
  }

  return v5;
}

- (void)setURL:(NSURL *)URL
{
  v4 = [(NSURL *)URL copy];
  private2 = self->_private2;
  v6 = private2->url;
  private2->url = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PDFActionURL *)self toolTip];
  v4 = [v2 stringWithFormat:@"URL Action - %@", v3];

  return v4;
}

- (PDFActionURL)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5
{
  v8 = a4;
  v44.receiver = self;
  v44.super_class = PDFActionURL;
  v9 = [(PDFAction *)&v44 initWithActionDictionary:a3 forDocument:v8 forPage:a5];
  if (!v9)
  {
    goto LABEL_29;
  }

  v42 = 0;
  string = 0;
  if (CGPDFDocumentIsEncrypted([v8 documentRef]))
  {
    UnresolvedObject = CGPDFDictionaryGetUnresolvedObject();
    if (UnresolvedObject)
    {
      value[0] = 0;
      value[1] = 0;
      if (CGPDFObjectGetValue(UnresolvedObject, kCGPDFObjectTypeDictionary|kCGPDFObjectTypeBoolean, value))
      {
        v39 = 0u;
        v40 = 0u;
        CGPDFDocumentGetXRef();
        CGPDFXRefGetEntry();
      }
    }
  }

  if (CGPDFDictionaryGetString(a3, "URI", &string))
  {
    BytePtr = CGPDFStringGetBytePtr(string);
    if (BytePtr)
    {
      v12 = BytePtr;
      if (CGPDFStringGetLength(string))
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:1];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
          if (v15)
          {
            v16 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v15];
            private2 = v9->_private2;
            url = private2->url;
            private2->url = v16;
          }

          v9->_private2->suspiciousURL = 0;
          v19 = v9->_private2->url;
          if (v19)
          {
            v20 = [(NSURL *)v19 scheme];
            if (![v20 isEqualToString:*MEMORY[0x1E696A9A8]])
            {
              v26 = 0;
LABEL_22:

              v23 = v26;
              goto LABEL_23;
            }

            v21 = v9->_private2->url;
            v38 = 0;
            v22 = [(NSURL *)v21 checkResourceIsReachableAndReturnError:&v38];
            v23 = v38;

            if (!v22)
            {
              v20 = [(PDFAction *)v9 baseURLForDocument:v8];
              v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v15 relativeToURL:v20];
              v25 = v24;
              if (v24)
              {
                v37 = v23;
                v36 = [v24 checkResourceIsReachableAndReturnError:&v37];
                v26 = v37;

                if (v36)
                {
                  objc_storeStrong(&v9->_private2->url, v25);
                }
              }

              else
              {
                v26 = v23;
              }

              goto LABEL_22;
            }
          }

          else
          {
            v23 = 0;
          }

LABEL_23:
        }
      }
    }
  }

  if (CGPDFDictionaryGetObject(a3, "F", &v42))
  {
    v27 = v42;
    v28 = [v8 documentURL];
    v29 = [v28 path];
    v30 = getFilepathFromObjectDetermineEncoding(v27, [v29 stringByDeletingLastPathComponent]);

    if (v30)
    {
      v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:v30];
      v32 = v9->_private2;
      v33 = v32->url;
      v32->url = v31;
    }
  }

  v34 = v9;
LABEL_29:

  return v9;
}

- (void)commonInit
{
  v7.receiver = self;
  v7.super_class = PDFActionURL;
  [(PDFAction *)&v7 commonInit];
  v3 = objc_alloc_init(PDFActionURLPrivateVars);
  private2 = self->_private2;
  self->_private2 = v3;

  v5 = self->_private2;
  url = v5->url;
  v5->url = 0;

  self->_private2->suspiciousURL = 0;
}

- (__CFDictionary)createDictionaryRef
{
  Mutable = [(PDFActionURL *)self URL];
  if (Mutable)
  {
    v4 = [(PDFActionURL *)self URL];
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      return 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"/S", @"/URI");
      v7 = [(PDFActionURL *)self URL];
      v8 = [v7 absoluteString];

      if (v8)
      {
        CFDictionarySetValue(Mutable, @"/URI", v8);
      }
    }
  }

  return Mutable;
}

- (id)toolTip
{
  v2 = [(PDFActionURL *)self URL];
  if ([v2 isFileURL])
  {
    v3 = [v2 path];
    v4 = [v3 lastPathComponent];
  }

  else
  {
    v3 = [v2 standardizedURL];
    v5 = [v3 absoluteString];
    v4 = [v5 stringByRemovingPercentEncoding];
  }

  return v4;
}

@end