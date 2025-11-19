@interface HMHTMLDocument
- (BOOL)isEqual:(id)a3;
- (BOOL)validateAndReturnError:(id *)a3;
- (HMHTMLDocument)initWithCoder:(id)a3;
- (HMHTMLDocument)initWithData:(id)a3 error:(id *)a4;
- (HMHTMLDocument)initWithString:(id)a3;
- (HMHTMLDocument)initWithURL:(id)a3 error:(id *)a4;
- (NSAttributedString)attributedString;
- (NSString)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHTMLDocument

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMHTMLDocument *)self stringValue];
  [v4 encodeObject:v5 forKey:@"HM.stringValue"];
}

- (HMHTMLDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.stringValue"];

  v6 = [(HMHTMLDocument *)self initWithString:v5];
  return v6;
}

- (BOOL)validateAndReturnError:(id *)a3
{
  v5 = [(HMHTMLDocument *)self stringValue];
  v6 = [v5 rangeOfString:@"<!DOCTYPE" options:1];

  v7 = [(HMHTMLDocument *)self stringValue];
  v8 = v7;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 1;
    v11 = [v7 rangeOfString:@"<!DOCTYPE html" options:1];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v10;
    }

    if (a3)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = @"Invalid value type.";
      v14 = @"Invalid Doctype.";
      v15 = 43;
LABEL_9:
      [v12 hmErrorWithCode:v15 description:v13 reason:v14 suggestion:0];
      *a3 = v10 = 0;
      return v10;
    }

    return 0;
  }

  v9 = [v7 containsString:@"<html>"];

  if ((v9 & 1) == 0)
  {
    if (a3)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = @"Not found.";
      v14 = @"Failed to find valid html tag.";
      v15 = 2;
      goto LABEL_9;
    }

    return 0;
  }

  return 1;
}

- (NSAttributedString)attributedString
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (UIKitLibraryCore_45531())
  {
    v3 = [(HMHTMLDocument *)self stringValue];
    v4 = [v3 fastestEncoding];

    v5 = [(HMHTMLDocument *)self stringValue];
    v6 = [v5 dataUsingEncoding:v4];

    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v8 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_45533;
    v26 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_45533;
    if (!getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_45533)
    {
      v9 = UIKitLibrary_45535();
      v24[3] = dlsym(v9, "NSDocumentTypeDocumentAttribute");
      getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_45533 = v24[3];
      v8 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v8)
    {
      goto LABEL_16;
    }

    v10 = *v8;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v11 = getNSHTMLTextDocumentTypeSymbolLoc_ptr;
    v26 = getNSHTMLTextDocumentTypeSymbolLoc_ptr;
    v27 = v10;
    if (!getNSHTMLTextDocumentTypeSymbolLoc_ptr)
    {
      v12 = UIKitLibrary_45535();
      v24[3] = dlsym(v12, "NSHTMLTextDocumentType");
      getNSHTMLTextDocumentTypeSymbolLoc_ptr = v24[3];
      v11 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v11)
    {
      goto LABEL_16;
    }

    v13 = *v11;
    v29[0] = v13;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v14 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_45539;
    v26 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_45539;
    if (!getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_45539)
    {
      v15 = UIKitLibrary_45535();
      v24[3] = dlsym(v15, "NSCharacterEncodingDocumentAttribute");
      getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_45539 = v24[3];
      v14 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v14)
    {
LABEL_16:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v28 = *v14;
    v16 = MEMORY[0x1E696AD98];
    v17 = v28;
    v18 = [v16 numberWithUnsignedInteger:v4];
    v29[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v27 count:2];
    v20 = [v7 initWithData:v6 options:v19 documentAttributes:0 error:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSString)stringValue
{
  v2 = [(HMHTMLDocument *)self document];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMHTMLDocument *)self document];
      v8 = [(HMHTMLDocument *)v6 document];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMHTMLDocument *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (HMHTMLDocument)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HMHTMLDocument;
  v7 = [(HMHTMLDocument *)&v12 init];
  if (v7 && (v8 = [[_HMDocument alloc] initWithURL:v6 error:a4], document = v7->_document, v7->_document = v8, document, !v7->_document))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (HMHTMLDocument)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HMHTMLDocument;
  v7 = [(HMHTMLDocument *)&v12 init];
  if (v7 && (v8 = [[_HMDocument alloc] initWithData:v6 error:a4], document = v7->_document, v7->_document = v8, document, !v7->_document))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (HMHTMLDocument)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMHTMLDocument;
  v5 = [(HMHTMLDocument *)&v10 init];
  if (v5 && (v6 = [[_HMDocument alloc] initWithString:v4], document = v5->_document, v5->_document = v6, document, !v5->_document))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end