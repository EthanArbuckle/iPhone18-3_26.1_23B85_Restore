@interface CRLContentDescriptionTranslator
+ (BOOL)hasAnyFreehandDrawingBoardItemsInContentDescription:(id)a3;
+ (BOOL)hasNativeBoardItemsContainingTextInContentDescription:(id)a3;
+ (BOOL)hasNativeBoardItemsInContentDescription:(id)a3;
+ (BOOL)hasNativeTextInContentDescription:(id)a3;
+ (BOOL)hasNativeTypesInContentDescription:(id)a3;
+ (BOOL)hasOnlyFreehandDrawingBoardItemsInContentDescription:(id)a3;
+ (BOOL)hasOnlyNativeTextBoxBoardItemsInContentDescription:(id)a3;
+ (BOOL)hasSingleNativeImageBoardItemInContentDescription:(id)a3;
+ (BOOL)hasSingleNativeMovieBoardItemInContentDescription:(id)a3;
+ (BOOL)hasTextStoragesInContentDescription:(id)a3;
+ (BOOL)p_hasNativeBoardItemsContainingTextInBoardItemDescription:(id)a3;
+ (id)stringToPrefixForStyleCopyingTypeFromDescription:(id)a3;
+ (unint64_t)countOfObjectsInContentDescription:(id)a3;
+ (unint64_t)numberOfBoardItemsInContentDescription:(id)a3;
+ (unint64_t)numberOfTopLevelBoardItemsInContentDescription:(id)a3;
+ (unsigned)elementKindFromBoardItemDescription:(id)a3;
- (CRLContentDescriptionTranslator)init;
- (id)contentDescriptionForBoardItems:(id)a3;
- (id)contentDescriptionForTextStorage:(id)a3 range:(_NSRange)a4 boardItems:(id)a5;
- (id)descriptionForBoardItem:(id)a3;
- (id)descriptionForTextStorage:(id)a3 range:(_NSRange)a4;
- (id)descriptionsForBoardItems:(id)a3;
@end

@implementation CRLContentDescriptionTranslator

- (CRLContentDescriptionTranslator)init
{
  v5.receiver = self;
  v5.super_class = CRLContentDescriptionTranslator;
  v2 = [(CRLContentDescriptionTranslator *)&v5 init];
  appDescriptionData = v2->_appDescriptionData;
  v2->_appDescriptionData = &__NSDictionary0__struct;

  return v2;
}

- (id)descriptionForBoardItem:(id)a3
{
  v4 = a3;
  v5 = [NSMutableDictionary dictionaryWithCapacity:5];
  if (v4)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 setObject:v7 forKeyedSubscript:@"class"];

    v8 = objc_opt_class();
    v9 = sub_100014370(v8, v4);
    v10 = [v9 isAutogrowingTextBox];

    if (v10)
    {
      [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"textbox"];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v4 text];
      v12 = -[CRLContentDescriptionTranslator descriptionForTextStorage:range:](self, "descriptionForTextStorage:range:", v11, 0, [v11 length]);
      v13 = v12;
      if (v12)
      {
        v17 = v12;
        v14 = [NSArray arrayWithObjects:&v17 count:1];
        [v5 setObject:v14 forKeyedSubscript:@"text"];
      }
    }
  }

  v15 = [v5 copy];

  return v15;
}

+ (unint64_t)countOfObjectsInContentDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [v3 objectForKeyedSubscript:@"appData"];

  return v4 - (v5 != 0);
}

+ (BOOL)hasNativeTypesInContentDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [v3 objectForKeyedSubscript:@"appData"];

  return v4 > (v5 != 0);
}

- (id)contentDescriptionForBoardItems:(id)a3
{
  v4 = [(CRLContentDescriptionTranslator *)self descriptionsForBoardItems:a3];
  if (v4)
  {
    v8[0] = @"appData";
    v5 = [(CRLContentDescriptionTranslator *)self appDescriptionData];
    v8[1] = @"boardItems";
    v9[0] = v5;
    v9[1] = v4;
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  return v6;
}

- (id)descriptionsForBoardItems:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(CRLContentDescriptionTranslator *)self descriptionForBoardItem:*(*(&v13 + 1) + 8 * i), v13];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

+ (BOOL)hasNativeBoardItemsInContentDescription:(id)a3
{
  v3 = [a1 p_boardItemsDescriptionsFromContentDescription:a3];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)p_hasNativeBoardItemsContainingTextInBoardItemDescription:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002323EC;
  v6[3] = &unk_10184B578;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (BOOL)hasNativeBoardItemsContainingTextInContentDescription:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"boardItems"];
  LOBYTE(a1) = [a1 p_hasNativeBoardItemsContainingTextInBoardItemDescription:v4];

  return a1;
}

+ (BOOL)hasSingleNativeImageBoardItemInContentDescription:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"boardItems"];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"class"];
    v7 = sub_100013F00(v5, v6);

    if (v7)
    {
      v8 = NSClassFromString(v7);
      if (v8)
      {
        LOBYTE(v8) = [(objc_class *)v8 isSubclassOfClass:objc_opt_class()];
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)hasSingleNativeMovieBoardItemInContentDescription:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"boardItems"];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"class"];
    v7 = sub_100013F00(v5, v6);

    if (v7)
    {
      v8 = NSClassFromString(v7);
      if (v8)
      {
        LOBYTE(v8) = [(objc_class *)v8 isSubclassOfClass:objc_opt_class()];
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)hasOnlyNativeTextBoxBoardItemsInContentDescription:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"boardItems"];
  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = objc_opt_class();
          v11 = [v9 objectForKeyedSubscript:{@"textbox", v16}];
          v12 = sub_100013F00(v10, v11);
          v13 = [v12 BOOLValue];

          if (!v13)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)hasOnlyFreehandDrawingBoardItemsInContentDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"boardItems"];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = [v4 count] != 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100232A20;
  v7[3] = &unk_10184B578;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (BOOL)hasAnyFreehandDrawingBoardItemsInContentDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"boardItems"];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100232BF4;
  v7[3] = &unk_10184B578;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (unint64_t)numberOfBoardItemsInContentDescription:(id)a3
{
  v3 = [a1 p_boardItemsDescriptionsFromContentDescription:a3];
  v4 = [v3 count];

  return v4;
}

+ (unint64_t)numberOfTopLevelBoardItemsInContentDescription:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"boardItems"];
  v4 = [v3 count];

  return v4;
}

- (id)descriptionForTextStorage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (length)
  {
    v7 = 1;
    if (![v5 hasVisibleContent])
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (([v5 hasVisibleContent] & 1) == 0)
    {
      v13 = 0;
      goto LABEL_9;
    }

    LODWORD(v7) = 0;
  }

  v8 = v7;
  v9 = (&v19 | (8 * v7));
  v10 = *v9;
  *v9 = &__kCFBooleanTrue;

  v7 = (v7 + 1);
  v11 = (&v17 & 0xFFFFFFFFFFFFFFF7 | (8 * (v8 & 1)));
  v12 = *v11;
  *v11 = @"hasVisibleText";

LABEL_8:
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v17 count:v7];
LABEL_9:
  for (i = 24; i != -8; i -= 8)
  {
  }

  for (j = 24; j != -8; j -= 8)
  {
  }

  if (!v13)
  {
LABEL_14:
    v13 = +[NSDictionary dictionary];
  }

  return v13;
}

- (id)contentDescriptionForTextStorage:(id)a3 range:(_NSRange)a4 boardItems:(id)a5
{
  v6 = [(CRLContentDescriptionTranslator *)self descriptionForTextStorage:a3 range:a4.location, a4.length, a5];
  if ([v6 count])
  {
    v10[0] = @"appData";
    v7 = [(CRLContentDescriptionTranslator *)self appDescriptionData];
    v10[1] = @"text";
    v11[0] = v7;
    v11[1] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  return v8;
}

+ (unsigned)elementKindFromBoardItemDescription:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 objectForKeyedSubscript:@"elementKind"];

  v6 = sub_100013F00(v4, v5);

  LODWORD(v3) = [v6 unsignedIntegerValue];
  return v3;
}

+ (BOOL)hasNativeTextInContentDescription:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"text"];
  v4 = objc_opt_class();
  v5 = [v3 objectForKeyedSubscript:@"hasText"];
  v6 = sub_100013F00(v4, v5);
  v7 = [v6 BOOLValue];

  return v7;
}

+ (BOOL)hasTextStoragesInContentDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"text"];
  if (v5 && (v6 = objc_opt_class(), [v5 objectForKeyedSubscript:@"hasText"], v7 = objc_claimAutoreleasedReturnValue(), sub_100013F00(v6, v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v11 = [v4 objectForKeyedSubscript:@"boardItems"];
    v10 = [a1 p_hasTextStoragesInBoardItemDescriptions:v11 topLevelBoardItems:v11];
  }

  return v10;
}

+ (id)stringToPrefixForStyleCopyingTypeFromDescription:(id)a3
{
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100B3F43C(v3);
  v5 = v4;

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end