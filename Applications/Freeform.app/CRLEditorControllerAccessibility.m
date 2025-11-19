@interface CRLEditorControllerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CRLSelectionPathAccessibility)crlaxSelectionPath;
- (NSArray)crlaxCurrentEditors;
- (id)crlaxEditorForEditAction:(SEL)a3 withSender:(id)a4;
- (id)crlaxTextInputEditor;
- (void)crlaxSetSelectionPath:(id)a3;
- (void)crlaxSetSelectionPath:(id)a3 withFlags:(unint64_t)a4;
@end

@implementation CRLEditorControllerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLSelectionPathAccessibility)crlaxSelectionPath
{
  v8 = 0;
  v2 = [(CRLEditorControllerAccessibility *)self crlaxTarget];
  v3 = [v2 selectionPath];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (void)crlaxSetSelectionPath:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D7C08;
  v4[3] = &unk_10183AE28;
  v4[4] = self;
  v3 = a3;
  v5 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

- (void)crlaxSetSelectionPath:(id)a3 withFlags:(unint64_t)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D7CB4;
  v6[3] = &unk_10183C780;
  v6[4] = self;
  v5 = a3;
  v7 = v5;
  v8 = a4;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }
}

- (id)crlaxTextInputEditor
{
  v2 = [(CRLEditorControllerAccessibility *)self crlaxTarget];
  v3 = [v2 textInputEditor];

  return v3;
}

- (NSArray)crlaxCurrentEditors
{
  v8 = 0;
  v2 = [(CRLEditorControllerAccessibility *)self crlaxTarget];
  v3 = [v2 currentEditors];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxEditorForEditAction:(SEL)a3 withSender:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1003D7ED0;
  v15 = sub_1003D7EE0;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003D7EE8;
  v7[3] = &unk_10185DF18;
  v9 = &v11;
  v10 = a3;
  v7[4] = self;
  v4 = a4;
  v8 = v4;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

@end