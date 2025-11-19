@interface CRLSelectionPathAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSArray)crlaxOrderedSelections;
- (id)crlaxMostSpecificCellSelection;
- (id)crlaxMostSpecificSelectionOfClass:(Class)a3;
- (id)crlaxMostSpecificTextSelection;
- (id)crlaxSelectionPathWithAppendedSelection:(id)a3;
- (void)crlaxEnumerateSelectionsLeastToMostSpecificInPathUsingBlock:(id)a3;
- (void)crlaxEnumerateSelectionsMostToLeastSpecificInPathUsingBlock:(id)a3;
@end

@implementation CRLSelectionPathAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSArray)crlaxOrderedSelections
{
  v19 = 0;
  v2 = [(CRLSelectionPathAccessibility *)self crlaxTarget];
  v3 = [v2 orderedSelections];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v19);
  if (v19 == 1)
  {
LABEL_13:
    abort();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 1, &v19);
        if (v19 == 1)
        {
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)crlaxMostSpecificCellSelection
{
  v3 = NSClassFromString(@"TSTCellSelection");
  v4 = [(CRLSelectionPathAccessibility *)self crlaxMostSpecificSelectionOfClass:NSClassFromString(@"TSTCellSelection")];
  v5 = __CRLAccessibilityCastAsClass(v3, v4, 0, 0);

  return v5;
}

- (id)crlaxMostSpecificTextSelection
{
  v3 = NSClassFromString(@"CRLWPSelection");
  v4 = [(CRLSelectionPathAccessibility *)self crlaxMostSpecificSelectionOfClass:NSClassFromString(@"CRLWPSelection")];
  v5 = __CRLAccessibilityCastAsClass(v3, v4, 0, 0);

  return v5;
}

- (id)crlaxMostSpecificSelectionOfClass:(Class)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1004FBBC8;
  v10 = sub_1004FBBD8;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004FBBE0;
  v5[3] = &unk_10186A988;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)crlaxSelectionPathWithAppendedSelection:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1004FBBC8;
  v17 = sub_1004FBBD8;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004FBDA8;
  v10[3] = &unk_10183DE60;
  v12 = &v13;
  v10[4] = self;
  v3 = a3;
  v11 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v10) || (v11, v4 = v14[5], _Block_object_dispose(&v13, 8), v18, LOBYTE(v13) = 0, v5 = v4, v6 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v13), v7 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v8 = v7;

  return v8;
}

- (void)crlaxEnumerateSelectionsMostToLeastSpecificInPathUsingBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004FBE94;
  v4[3] = &unk_10183FC10;
  v4[4] = self;
  v3 = a3;
  v5 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

- (void)crlaxEnumerateSelectionsLeastToMostSpecificInPathUsingBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004FBF3C;
  v4[3] = &unk_10183FC10;
  v4[4] = self;
  v3 = a3;
  v5 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

@end