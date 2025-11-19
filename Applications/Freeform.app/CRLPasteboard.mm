@interface CRLPasteboard
+ (CRLPasteboard)pasteboardWithName:(id)a3 create:(BOOL)a4;
+ (CRLPasteboard)pasteboardWithPasteboard:(id)a3;
+ (CRLPasteboard)pasteboardWithUniqueName;
+ (CRLPasteboard)stylePasteboard;
+ (id)activePasteboardForName:(id)a3;
+ (id)activePasteboards;
+ (id)activePasteboardsQueue;
+ (id)generalPasteboard;
- (BOOL)containsAnyPasteboardTypeInArray:(id)a3;
- (BOOL)containsContentLanguageDrawableTypes;
- (BOOL)containsImportableRichTextTypes;
- (BOOL)containsImportableTextTypes;
- (BOOL)containsNativePasteboardTypes;
- (BOOL)containsPasteboardTypes:(id)a3;
- (BOOL)isSmartCopy;
- (id)description;
@end

@implementation CRLPasteboard

+ (id)activePasteboardsQueue
{
  if (qword_101A344F0 != -1)
  {
    sub_101311334();
  }

  v3 = qword_101A344E8;

  return v3;
}

+ (id)activePasteboards
{
  if (qword_101A34500 != -1)
  {
    sub_101311348();
  }

  v3 = qword_101A344F8;

  return v3;
}

+ (id)activePasteboardForName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000E8050;
  v17 = sub_1000E8060;
  v18 = 0;
  v5 = [a1 activePasteboardsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8068;
  block[3] = &unk_10183B670;
  v11 = &v13;
  v12 = a1;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)generalPasteboard
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8180;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34510 != -1)
  {
    dispatch_once(&qword_101A34510, block);
  }

  v2 = qword_101A34508;

  return v2;
}

+ (CRLPasteboard)pasteboardWithName:(id)a3 create:(BOOL)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000E8050;
  v20 = sub_1000E8060;
  v21 = 0;
  v7 = [a1 activePasteboardsQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E83F8;
  v11[3] = &unk_10183B6B8;
  v13 = &v16;
  v14 = a1;
  v12 = v6;
  v15 = a4;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

+ (CRLPasteboard)pasteboardWithUniqueName
{
  v3 = [objc_alloc(objc_msgSend(a1 "pasteboardClass"))];
  v4 = [a1 activePasteboardsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E858C;
  v7[3] = &unk_10183B720;
  v9 = a1;
  v5 = v3;
  v8 = v5;
  dispatch_async(v4, v7);

  return v5;
}

+ (CRLPasteboard)pasteboardWithPasteboard:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000E8050;
  v17 = sub_1000E8060;
  v18 = 0;
  v5 = [a1 activePasteboardsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E88E4;
  block[3] = &unk_10183B748;
  v11 = &v13;
  v12 = a1;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (BOOL)containsPasteboardTypes:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  [(CRLPasteboard *)self pasteboardTypes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v4 containsObject:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          if (!--v5)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)containsAnyPasteboardTypeInArray:(id)a3
{
  v4 = a3;
  [(CRLPasteboard *)self pasteboardTypes];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) crl_conformsToAnyUTI:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsNativePasteboardTypes
{
  v5[0] = @"com.apple.freeform.CRLNativeMetadata";
  v5[1] = @"com.apple.freeform.CRLNativeData";
  v3 = [NSArray arrayWithObjects:v5 count:2];
  LOBYTE(self) = [(CRLPasteboard *)self containsPasteboardTypes:v3];

  return self;
}

- (BOOL)containsImportableRichTextTypes
{
  v2 = self;
  v3 = [(CRLPasteboard *)self importableRichTextTypes];
  LOBYTE(v2) = [(CRLPasteboard *)v2 containsAnyPasteboardTypeInArray:v3];

  return v2;
}

- (BOOL)containsImportableTextTypes
{
  [(CRLPasteboard *)self pasteboardTypes];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([CRLIngestionTypes isValidPlainTextUTI:*(*(&v7 + 1) + 8 * i), v7])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isSmartCopy
{
  v5 = @"NeXT smart paste pasteboard type";
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  LOBYTE(self) = [(CRLPasteboard *)self containsPasteboardTypes:v3];

  return self;
}

- (id)description
{
  v3 = [objc_opt_class() description];
  v4 = [(CRLPasteboard *)self name];
  v5 = [(CRLPasteboard *)self pasteboardTypes];
  v6 = [NSString stringWithFormat:@"<%@ %p name=%@ pasteboardTypes=%@>", v3, self, v4, v5];

  return v6;
}

+ (CRLPasteboard)stylePasteboard
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E90B0;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34520 != -1)
  {
    dispatch_once(&qword_101A34520, block);
  }

  v2 = qword_101A34518;

  return v2;
}

- (BOOL)containsContentLanguageDrawableTypes
{
  v2 = self;
  v3 = sub_100D8BE80();

  return v3 & 1;
}

@end