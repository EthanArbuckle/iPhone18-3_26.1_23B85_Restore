@interface MKMapAttribution
+ (id)attributionUrlFromRegionalAttributions:(id)attributions;
- (MKMapAttribution)initWithStringAttributes:(id)attributes regionalAttributions:(id)attributions underlineText:(BOOL)text applyLinkAttribution:(BOOL)attribution scale:(double)scale;
- (id)attributedStringWithImage:(id)image attributes:(id)attributes;
@end

@implementation MKMapAttribution

- (MKMapAttribution)initWithStringAttributes:(id)attributes regionalAttributions:(id)attributions underlineText:(BOOL)text applyLinkAttribution:(BOOL)attribution scale:(double)scale
{
  attributionCopy = attribution;
  textCopy = text;
  v94 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  attributionsCopy = attributions;
  v90.receiver = self;
  v90.super_class = MKMapAttribution;
  v13 = [(MKMapAttribution *)&v90 init];
  if (v13)
  {
    modernManager = [MEMORY[0x1E69A2478] modernManager];
    activeTileGroup = [modernManager activeTileGroup];
    attributions = [activeTileGroup attributions];

    if ([attributionsCopy count])
    {
      v17 = attributionsCopy;
    }

    else
    {
      v17 = attributions;
    }

    v18 = v17;
    if ([v18 count])
    {
      obj = textCopy;
      v19 = [v18 objectAtIndex:0];
      name = 0;
      if ([v19 hasName])
      {
        name = [v19 name];
      }

      if ([v19 hasUrl])
      {
        v82 = [v19 url];
      }

      else
      {
        v82 = 0;
      }

      if ([v19 hasPlainTextURL])
      {
        plainTextURL = [v19 plainTextURL];
        lastPathComponent = [plainTextURL lastPathComponent];
      }

      else
      {
        lastPathComponent = 0;
      }

      if ([v19 hasLinkDisplayStringIndex])
      {
        linkDisplayStringIndex = [v19 linkDisplayStringIndex];
        modernManager2 = [MEMORY[0x1E69A2478] modernManager];
        v27 = [modernManager2 bestLocalizedStringForDisplayStringAtIndex:linkDisplayStringIndex];

        if ([v27 hasStringValue])
        {
          stringValue = [v27 stringValue];
        }

        else
        {
          stringValue = 0;
        }
      }

      else
      {
        stringValue = 0;
      }

      v29 = [[MKMapAttributionImage alloc] initWithAttributions:v18 type:0];

      if (!stringValue)
      {
        if (v29 | name)
        {
          v30 = @"%@\nand other data providers";
        }

        else
        {
          v30 = @"Data from others";
        }

        stringValue = _MKLocalizedStringFromThisBundle(v30);
      }

      objc_storeStrong(&v13->_providerString, stringValue);
      v79 = name;
      objc_storeStrong(&v13->_providerName, name);
      v76 = stringValue;
      v31 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:stringValue attributes:attributesCopy];
      string = [v31 string];
      v33 = [string rangeOfString:@"%@"];
      v35 = v34;

      v77 = v18;
      v75 = v29;
      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v29)
        {
          mEMORY[0x1E69A2468] = [MEMORY[0x1E69A2468] sharedManager];
          v37 = [v29 imageNameForScale:scale];
          v80 = [mEMORY[0x1E69A2468] dataForResourceWithName:v37 fallbackBundle:0];

          v38 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v80 scale:scale];
          v39 = [v38 imageWithRenderingMode:2];

          v40 = attributions;
          v41 = attributionsCopy;
          providerImage = v13->_providerImage;
          v13->_providerImage = v39;
          v43 = v39;

          attributionsCopy = v41;
          attributions = v40;
          v44 = [(MKMapAttribution *)v13 attributedStringWithImage:v43 attributes:attributesCopy];

          [v31 replaceCharactersInRange:v33 withAttributedString:{v35, v44}];
        }

        else if (v79)
        {
          [v31 replaceCharactersInRange:v33 withString:{v35, v79}];
        }
      }

      if (obj)
      {
        v71 = attributions;
        v72 = attributionsCopy;
        v73 = v13;
        v74 = attributesCopy;
        [(NSString *)v13->_providerString componentsSeparatedByString:@"%@"];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        obja = v89 = 0u;
        v45 = [obja countByEnumeratingWithState:&v86 objects:v93 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v87;
          v48 = *MEMORY[0x1E69DB758];
          v49 = *MEMORY[0x1E69DB610];
          v81 = *MEMORY[0x1E69DB670];
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v87 != v47)
              {
                objc_enumerationMutation(obja);
              }

              v51 = *(*(&v86 + 1) + 8 * i);
              whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
              v53 = [v51 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              string2 = [v31 string];
              v55 = [string2 rangeOfString:v53];
              v57 = v56;

              if (v57)
              {
                v91[0] = v48;
                v91[1] = v49;
                v92[0] = &unk_1F16114B8;
                v92[1] = &unk_1F1610D30;
                v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
                if (attributionCopy && [v82 length])
                {
                  [v31 addAttribute:v81 value:v82 range:{v55, v57}];
                }

                [v31 addAttributes:v58 range:{v55, v57}];
              }
            }

            v46 = [obja countByEnumeratingWithState:&v86 objects:v93 count:16];
          }

          while (v46);
        }

        v13 = v73;
        attributesCopy = v74;
        attributions = v71;
        attributionsCopy = v72;
      }

      objc_storeStrong(&v13->_string, v31);
      v59 = v82;
      if (v82)
      {
        v60 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v82];
        url = v13->_url;
        v13->_url = v60;
      }

      v62 = lastPathComponent;
      v63 = v79;
      if ([lastPathComponent length])
      {
        v64 = [MEMORY[0x1E69A1DB8] urlFor:20];
        v65 = [v64 URLByAppendingPathComponent:lastPathComponent];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v65 path];
        v68 = [defaultManager fileExistsAtPath:path];

        if (v68)
        {
          objc_storeStrong(&v13->_plainTextFileURL, v65);
        }

        v62 = lastPathComponent;
        v63 = v79;
        v59 = v82;
      }

      v69 = v13;

      v18 = v77;
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0 attributes:attributesCopy];
      string = v13->_string;
      v13->_string = v21;

      v23 = v13;
    }
  }

  return v13;
}

- (id)attributedStringWithImage:(id)image attributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = MEMORY[0x1E69DB7F0];
  imageCopy = image;
  v8 = objc_alloc_init(v6);
  [v8 setImage:imageCopy];
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  [imageCopy size];
  v12 = v11;
  v14 = v13;

  [v8 setBounds:{v9, v10, v12, v14}];
  if (attributesCopy)
  {
    [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8 attributes:attributesCopy];
  }

  else
  {
    [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
  }
  v15 = ;

  return v15;
}

+ (id)attributionUrlFromRegionalAttributions:(id)attributions
{
  attributionsCopy = attributions;
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];
  attributions = [activeTileGroup attributions];

  if ([attributionsCopy count])
  {
    v7 = attributionsCopy;
  }

  else
  {
    v7 = attributions;
  }

  v8 = v7;
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = 0;
    if ([v9 hasUrl])
    {
      v11 = [v9 url];
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end