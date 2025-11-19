@interface MKMapAttribution
+ (id)attributionUrlFromRegionalAttributions:(id)a3;
- (MKMapAttribution)initWithStringAttributes:(id)a3 regionalAttributions:(id)a4 underlineText:(BOOL)a5 applyLinkAttribution:(BOOL)a6 scale:(double)a7;
- (id)attributedStringWithImage:(id)a3 attributes:(id)a4;
@end

@implementation MKMapAttribution

- (MKMapAttribution)initWithStringAttributes:(id)a3 regionalAttributions:(id)a4 underlineText:(BOOL)a5 applyLinkAttribution:(BOOL)a6 scale:(double)a7
{
  v85 = a6;
  v8 = a5;
  v94 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v90.receiver = self;
  v90.super_class = MKMapAttribution;
  v13 = [(MKMapAttribution *)&v90 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E69A2478] modernManager];
    v15 = [v14 activeTileGroup];
    v16 = [v15 attributions];

    if ([v12 count])
    {
      v17 = v12;
    }

    else
    {
      v17 = v16;
    }

    v18 = v17;
    if ([v18 count])
    {
      obj = v8;
      v19 = [v18 objectAtIndex:0];
      v20 = 0;
      if ([v19 hasName])
      {
        v20 = [v19 name];
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
        v24 = [v19 plainTextURL];
        v78 = [v24 lastPathComponent];
      }

      else
      {
        v78 = 0;
      }

      if ([v19 hasLinkDisplayStringIndex])
      {
        v25 = [v19 linkDisplayStringIndex];
        v26 = [MEMORY[0x1E69A2478] modernManager];
        v27 = [v26 bestLocalizedStringForDisplayStringAtIndex:v25];

        if ([v27 hasStringValue])
        {
          v28 = [v27 stringValue];
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      v29 = [[MKMapAttributionImage alloc] initWithAttributions:v18 type:0];

      if (!v28)
      {
        if (v29 | v20)
        {
          v30 = @"%@\nand other data providers";
        }

        else
        {
          v30 = @"Data from others";
        }

        v28 = _MKLocalizedStringFromThisBundle(v30);
      }

      objc_storeStrong(&v13->_providerString, v28);
      v79 = v20;
      objc_storeStrong(&v13->_providerName, v20);
      v76 = v28;
      v31 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v28 attributes:v11];
      v32 = [v31 string];
      v33 = [v32 rangeOfString:@"%@"];
      v35 = v34;

      v77 = v18;
      v75 = v29;
      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v29)
        {
          v36 = [MEMORY[0x1E69A2468] sharedManager];
          v37 = [v29 imageNameForScale:a7];
          v80 = [v36 dataForResourceWithName:v37 fallbackBundle:0];

          v38 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v80 scale:a7];
          v39 = [v38 imageWithRenderingMode:2];

          v40 = v16;
          v41 = v12;
          providerImage = v13->_providerImage;
          v13->_providerImage = v39;
          v43 = v39;

          v12 = v41;
          v16 = v40;
          v44 = [(MKMapAttribution *)v13 attributedStringWithImage:v43 attributes:v11];

          [v31 replaceCharactersInRange:v33 withAttributedString:{v35, v44}];
        }

        else if (v79)
        {
          [v31 replaceCharactersInRange:v33 withString:{v35, v79}];
        }
      }

      if (obj)
      {
        v71 = v16;
        v72 = v12;
        v73 = v13;
        v74 = v11;
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
              v52 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
              v53 = [v51 stringByTrimmingCharactersInSet:v52];

              v54 = [v31 string];
              v55 = [v54 rangeOfString:v53];
              v57 = v56;

              if (v57)
              {
                v91[0] = v48;
                v91[1] = v49;
                v92[0] = &unk_1F16114B8;
                v92[1] = &unk_1F1610D30;
                v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
                if (v85 && [v82 length])
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
        v11 = v74;
        v16 = v71;
        v12 = v72;
      }

      objc_storeStrong(&v13->_string, v31);
      v59 = v82;
      if (v82)
      {
        v60 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v82];
        url = v13->_url;
        v13->_url = v60;
      }

      v62 = v78;
      v63 = v79;
      if ([v78 length])
      {
        v64 = [MEMORY[0x1E69A1DB8] urlFor:20];
        v65 = [v64 URLByAppendingPathComponent:v78];
        v66 = [MEMORY[0x1E696AC08] defaultManager];
        v67 = [v65 path];
        v68 = [v66 fileExistsAtPath:v67];

        if (v68)
        {
          objc_storeStrong(&v13->_plainTextFileURL, v65);
        }

        v62 = v78;
        v63 = v79;
        v59 = v82;
      }

      v69 = v13;

      v18 = v77;
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0 attributes:v11];
      string = v13->_string;
      v13->_string = v21;

      v23 = v13;
    }
  }

  return v13;
}

- (id)attributedStringWithImage:(id)a3 attributes:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69DB7F0];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setImage:v7];
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 size];
  v12 = v11;
  v14 = v13;

  [v8 setBounds:{v9, v10, v12, v14}];
  if (v5)
  {
    [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8 attributes:v5];
  }

  else
  {
    [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
  }
  v15 = ;

  return v15;
}

+ (id)attributionUrlFromRegionalAttributions:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A2478] modernManager];
  v5 = [v4 activeTileGroup];
  v6 = [v5 attributions];

  if ([v3 count])
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
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