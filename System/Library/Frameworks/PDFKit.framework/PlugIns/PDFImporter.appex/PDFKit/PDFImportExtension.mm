@interface PDFImportExtension
- (BOOL)document_has_spaces:(CGPDFDocument *)document_has_spaces;
- (BOOL)new_updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error;
- (id)getPDFText:(CGPDFDocument *)text;
- (id)getStringFromPDFDictioanry:(CGPDFDictionary *)dictioanry forKey:(id)key;
- (id)new_getPDFText:(id)text;
- (void)getPageText:(id)text page:(CGPDFPage *)page gap:(float)gap lastPage:(BOOL)lastPage;
@end

@implementation PDFImportExtension

- (id)getStringFromPDFDictioanry:(CGPDFDictionary *)dictioanry forKey:(id)key
{
  value = 0;
  String = CGPDFDictionaryGetString(dictioanry, [key UTF8String], &value);
  v5 = 0;
  if (String)
  {
    v5 = CGPDFStringCopyTextString(value);
  }

  return v5;
}

- (void)getPageText:(id)text page:(CGPDFPage *)page gap:(float)gap lastPage:(BOOL)lastPage
{
  textCopy = text;
  bzero(&v64, 0x810uLL);
  if (!CGPDFPageCopyTextString())
  {
    goto LABEL_53;
  }

  Length = CGPDFTextStringGetLength();
  if (!Length)
  {
    CGPDFTextStringRelease();
    goto LABEL_53;
  }

  objc_storeStrong(&v66, text);
  v64 = 0;
  v54 = textCopy;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = CGPDFPageGetRotationAngle(page) % 360;
  v15 = v14 + (v14 < 0 ? 0x168 : 0);
  if (v15)
  {
    v16 = v15 == 180;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  v55 = v17;
  v18 = gap + 1.0;
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    CGPDFTextStringGetBBoxForIndex();
    v56 = v21;
    v57 = v22;
    rect = v23;
    v68 = 0.0;
    v69 = 0;
    CGPDFTextStringGetTransformForIndex();
    v59 = v67;
    IsIdentity = CGAffineTransformIsIdentity(&v67);
    CGPDFTextStringGetPositionForIndex();
    v26 = v25 + v56;
    v27 = v68;
    if (v68 == 0.0)
    {
      v27 = v57;
    }

    v28 = rect;
    if (!IsIdentity)
    {
      v67 = v59;
      *&v24 = CGRectApplyAffineTransform(*&v24, &v67);
    }

    if (v55)
    {
      v29 = v24;
      v30 = v27;
      v24 = v26;
      v27 = v28;
    }

    else
    {
      v29 = v26;
      v30 = v28;
    }

    v31 = v27;
    v32 = v30;
    v33 = v29;
    v61 = v33;
    v62 = v32;
    v34 = v24;
    v63 = v34;
    if (!v11)
    {
      goto LABEL_34;
    }

    v35 = v34 - v19;
    if ((v34 - v19) == 0.0 || ((v41 = v35 <= v31, v39 = v35, v40 = v31 * -0.25, v41) ? (v41 = v40 <= v39) : (v41 = 0), v41))
    {
      if (!(v13 & 1 | (v20 >= v33)))
      {
        CharacterAtIndex = CGPDFTextStringGetCharacterAtIndex();
        LOBYTE(v37) = 0;
        if ((CharacterAtIndex - 12352) >= 0xC0 && (CharacterAtIndex + 155) >= 0x3Bu)
        {
          LODWORD(v67.a) = 0;
          Script = uscript_getScript();
          v37 = (Script > 0x16) | (0x2DFFFFu >> Script);
        }

        if (v37 & 1) != 0 || ((v12 ^ 1))
        {
          v50 = v64++;
          v51 = v64;
          v65[v50] = 32;
          if (v51 == 1024)
          {
            [v66 appendCharacters:v65 length:1024];
            v64 = 0;
          }

          v13 = 1;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      if ((v13 & 1) != 0 || (v42 = v64, ++v64, v43 = v64, v65[v42] = 32, v43 != 1024))
      {
        v13 = 1;
LABEL_34:
        v19 = v34;
        goto LABEL_35;
      }

      [v66 appendCharacters:v65 length:1024];
      v64 = 0;
      v13 = 1;
      v19 = v63;
    }

LABEL_35:
    v44 = CGPDFTextStringGetCharacterAtIndex();
    v45 = v44;
    v46 = v44 == 32;
    if ((v13 & (v44 == 32)) == 0)
    {
      v47 = v64++;
      v48 = v64;
      v65[v47] = v44;
      if (v48 == 1024)
      {
        [v66 appendCharacters:v65 length:1024];
        v64 = 0;
      }
    }

    v12 = 1;
    if ((v45 - 12352) >= 0xC0 && (v45 + 155) >= 0x3Bu)
    {
      LODWORD(v67.a) = 0;
      v49 = uscript_getScript();
      v12 = (v49 < 0x17) & (0x520000u >> v49);
    }

    v20 = v61 + (v18 * v62);
    ++v11;
    v13 = v46;
  }

  while (Length != v11);
  CGPDFTextStringRelease();
  textCopy = v54;
  v52 = v64;
  if (v45 != 32 && !lastPage)
  {
    v65[v64] = 32;
    v64 = ++v52;
    if (v52 == 1024)
    {
      [v66 appendCharacters:v65 length:1024];
      goto LABEL_52;
    }
  }

  if (v52)
  {
    [v66 appendCharacters:v65 length:?];
LABEL_52:
    v64 = 0;
  }

LABEL_53:
}

- (id)new_getPDFText:(id)text
{
  textCopy = text;
  v4 = +[NSMutableString string];
  pageCount = [textCopy pageCount];
  if (pageCount)
  {
    v6 = pageCount;
    for (i = 0; v6 != i; ++i)
    {
      v8 = [textCopy sync_pageAtIndex:i];
      v9 = v8;
      if (v8)
      {
        pageText = [v8 pageText];
        if (pageText)
        {
          if (i)
          {
            [v4 appendString:@"\n"];
          }

          [v4 appendString:pageText];
          if ([v4 length] >> 20 > 4)
          {

            break;
          }
        }
      }
    }
  }

  return v4;
}

- (BOOL)new_updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  v10 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v58 = 0;
  v12 = [v10 attributesOfItemAtPath:path error:&v58];
  v13 = v58;

  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:NSFileProtectionKey];
    if ([v14 isEqualToString:NSFileProtectionComplete])
    {
      LOBYTE(isUnlocked) = 0;
    }

    else
    {
      v17 = [NSData dataWithContentsOfURL:lCopy options:1 error:0];
      if (v17)
      {
        v18 = +[CGRemotePDFServiceProxy sharedInstance];
        v19 = [v18 newRemotePDFDocumentWithData:v17 error:0];

        if (v19)
        {
          selfCopy = self;
          v57 = 0;
          v20 = [lCopy getResourceValue:&v57 forKey:NSURLLocalizedNameKey error:0];
          v21 = v57;
          if (v20)
          {
            [attributesCopy setDisplayName:v21];
          }

          else
          {
            lastPathComponent = [lCopy lastPathComponent];

            if (lastPathComponent)
            {
              [attributesCopy setDisplayName:lastPathComponent];
              v21 = lastPathComponent;
            }

            else
            {
              v21 = 0;
            }
          }

          v55 = 0;
          v56 = 0;
          [v19 getVersionMajor:&v56 andMinor:&v55];
          v23 = [NSString stringWithFormat:@"%ld.%ld", v56, v55];
          [attributesCopy setVersion:v23];

          pageCount = [v19 pageCount];
          if (pageCount)
          {
            v25 = [NSNumber numberWithUnsignedLong:pageCount];
            [attributesCopy setPageCount:v25];
          }

          v54 = v21;
          v26 = [v19 sync_pageAtIndex:1];
          v27 = v26;
          if (v26)
          {
            [v26 rectForBox:1];
            v29 = v28;
            v31 = [NSNumber numberWithDouble:v30];
            [attributesCopy setPageWidth:v31];

            v32 = [NSNumber numberWithDouble:v29];
            [attributesCopy setPageHeight:v32];
          }

          v53 = v27;
          if ([v19 isEncrypted])
          {
            v33 = @"Password Encrypted";
          }

          else
          {
            v33 = @"None";
          }

          [attributesCopy setSecurityMethod:v33];
          isUnlocked = [v19 isUnlocked];
          if (isUnlocked)
          {
            infoDictionary = [v19 infoDictionary];
            if (infoDictionary)
            {
              v34 = infoDictionary;
              v35 = [infoDictionary objectForKeyedSubscript:kCGPDFDocumentTitle];
              v50 = v35;
              if (v35 && (v36 = v35, [v35 length]))
              {
                [attributesCopy setTitle:v36];
              }

              else
              {
                v37 = [infoDictionary objectForKeyedSubscript:kCGPDFDocumentSubject];
                v38 = v37;
                if (v37 && [v37 length])
                {
                  [attributesCopy setTitle:v38];
                }
              }

              v39 = [infoDictionary objectForKeyedSubscript:kCGPDFDocumentAuthor];
              v40 = v39;
              if (v39)
              {
                v60 = v39;
                v41 = [NSArray arrayWithObjects:&v60 count:1];
                [attributesCopy setAuthorNames:v41];

                v34 = infoDictionary;
              }

              v49 = v40;
              v42 = [v34 objectForKeyedSubscript:kCGPDFDocumentCreator];
              if (v42)
              {
                [attributesCopy setCreator:v42];
                v59 = v42;
                v43 = [NSArray arrayWithObjects:&v59 count:1];
                [attributesCopy setAuthorNames:v43];

                v34 = infoDictionary;
              }

              v48 = v42;
              v44 = [v34 objectForKeyedSubscript:kCGPDFDocumentProducer];
              if (v44)
              {
                [attributesCopy setProducer:v44];
              }

              v45 = [v34 objectForKeyedSubscript:kCGPDFDocumentKeywords];
              if (v45)
              {
                [attributesCopy setKeywords:v45];
              }
            }

            v46 = [(PDFImportExtension *)selfCopy new_getPDFText:v19];
            if (v46)
            {
              [attributesCopy setTextContent:v46];
            }
          }
        }

        else
        {
          LOBYTE(isUnlocked) = 0;
        }
      }

      else
      {
        LOBYTE(isUnlocked) = 0;
      }
    }
  }

  else if (error)
  {
    v16 = v13;
    LOBYTE(isUnlocked) = 0;
    *error = v13;
  }

  else
  {
    LOBYTE(isUnlocked) = 0;
  }

  return isUnlocked;
}

- (BOOL)document_has_spaces:(CGPDFDocument *)document_has_spaces
{
  if (!CGPDFDocumentGetPage(document_has_spaces, 1uLL) || !CGPDFPageCopyTextString())
  {
    return 0;
  }

  Length = CGPDFTextStringGetLength();
  if (Length >= 0x80)
  {
    v4 = 128;
  }

  else
  {
    v4 = Length;
  }

  if (Length)
  {
    if (CGPDFTextStringGetCharacterAtIndex() == 32)
    {
      v5 = 1;
    }

    else
    {
      v6 = 1;
      do
      {
        v7 = v6;
        if (v4 == v6)
        {
          break;
        }

        CharacterAtIndex = CGPDFTextStringGetCharacterAtIndex();
        v6 = v7 + 1;
      }

      while (CharacterAtIndex != 32);
      v5 = v7 < v4;
    }
  }

  else
  {
    v5 = 0;
  }

  CGPDFTextStringRelease();
  return v5;
}

- (id)getPDFText:(CGPDFDocument *)text
{
  NumberOfPages = CGPDFDocumentGetNumberOfPages(text);
  if (!NumberOfPages)
  {
    goto LABEL_13;
  }

  v6 = NumberOfPages;
  v7 = +[NSMutableString string];
  if ([(PDFImportExtension *)self document_has_spaces:text])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.09;
  }

  v9 = 1;
  do
  {
    Page = CGPDFDocumentGetPage(text, v9);
    *&v11 = v8;
    [(PDFImportExtension *)self getPageText:v7 page:Page gap:v6 == v9++ lastPage:v11];
  }

  while ([v7 length] >> 20 <= 4 && v9 <= v6);
  if (![v7 length])
  {

LABEL_13:
    v7 = 0;
  }

  return v7;
}

@end