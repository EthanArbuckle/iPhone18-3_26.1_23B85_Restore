@interface HMHTMLDocument
- (BOOL)isEqual:(id)equal;
- (BOOL)validateAndReturnError:(id *)error;
- (HMHTMLDocument)initWithCoder:(id)coder;
- (HMHTMLDocument)initWithData:(id)data error:(id *)error;
- (HMHTMLDocument)initWithString:(id)string;
- (HMHTMLDocument)initWithURL:(id)l error:(id *)error;
- (NSAttributedString)attributedString;
- (NSString)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHTMLDocument

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(HMHTMLDocument *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"HM.stringValue"];
}

- (HMHTMLDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.stringValue"];

  v6 = [(HMHTMLDocument *)self initWithString:v5];
  return v6;
}

- (BOOL)validateAndReturnError:(id *)error
{
  stringValue = [(HMHTMLDocument *)self stringValue];
  v6 = [stringValue rangeOfString:@"<!DOCTYPE" options:1];

  stringValue2 = [(HMHTMLDocument *)self stringValue];
  v8 = stringValue2;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 1;
    v11 = [stringValue2 rangeOfString:@"<!DOCTYPE html" options:1];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v10;
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = @"Invalid value type.";
      v14 = @"Invalid Doctype.";
      v15 = 43;
LABEL_9:
      [v12 hmErrorWithCode:v15 description:v13 reason:v14 suggestion:0];
      *error = v10 = 0;
      return v10;
    }

    return 0;
  }

  v9 = [stringValue2 containsString:@"<html>"];

  if ((v9 & 1) == 0)
  {
    if (error)
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
    stringValue = [(HMHTMLDocument *)self stringValue];
    fastestEncoding = [stringValue fastestEncoding];

    stringValue2 = [(HMHTMLDocument *)self stringValue];
    v6 = [stringValue2 dataUsingEncoding:fastestEncoding];

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
    v18 = [v16 numberWithUnsignedInteger:fastestEncoding];
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
  document = [(HMHTMLDocument *)self document];
  stringValue = [document stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      document = [(HMHTMLDocument *)self document];
      document2 = [(HMHTMLDocument *)v6 document];
      v9 = [document isEqual:document2];
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
  stringValue = [(HMHTMLDocument *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (HMHTMLDocument)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = HMHTMLDocument;
  v7 = [(HMHTMLDocument *)&v12 init];
  if (v7 && (v8 = [[_HMDocument alloc] initWithURL:lCopy error:error], document = v7->_document, v7->_document = v8, document, !v7->_document))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (HMHTMLDocument)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = HMHTMLDocument;
  v7 = [(HMHTMLDocument *)&v12 init];
  if (v7 && (v8 = [[_HMDocument alloc] initWithData:dataCopy error:error], document = v7->_document, v7->_document = v8, document, !v7->_document))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (HMHTMLDocument)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = HMHTMLDocument;
  v5 = [(HMHTMLDocument *)&v10 init];
  if (v5 && (v6 = [[_HMDocument alloc] initWithString:stringCopy], document = v5->_document, v5->_document = v6, document, !v5->_document))
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