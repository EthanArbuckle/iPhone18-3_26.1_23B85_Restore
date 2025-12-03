@interface CRLEditorControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLSelectionPathAccessibility)crlaxSelectionPath;
- (NSArray)crlaxCurrentEditors;
- (id)crlaxEditorForEditAction:(SEL)action withSender:(id)sender;
- (id)crlaxTextInputEditor;
- (void)crlaxSetSelectionPath:(id)path;
- (void)crlaxSetSelectionPath:(id)path withFlags:(unint64_t)flags;
@end

@implementation CRLEditorControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLSelectionPathAccessibility)crlaxSelectionPath
{
  v8 = 0;
  crlaxTarget = [(CRLEditorControllerAccessibility *)self crlaxTarget];
  selectionPath = [crlaxTarget selectionPath];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, selectionPath, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (void)crlaxSetSelectionPath:(id)path
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D7C08;
  v4[3] = &unk_10183AE28;
  v4[4] = self;
  pathCopy = path;
  v5 = pathCopy;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

- (void)crlaxSetSelectionPath:(id)path withFlags:(unint64_t)flags
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D7CB4;
  v6[3] = &unk_10183C780;
  v6[4] = self;
  pathCopy = path;
  v7 = pathCopy;
  flagsCopy = flags;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }
}

- (id)crlaxTextInputEditor
{
  crlaxTarget = [(CRLEditorControllerAccessibility *)self crlaxTarget];
  textInputEditor = [crlaxTarget textInputEditor];

  return textInputEditor;
}

- (NSArray)crlaxCurrentEditors
{
  v8 = 0;
  crlaxTarget = [(CRLEditorControllerAccessibility *)self crlaxTarget];
  currentEditors = [crlaxTarget currentEditors];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, currentEditors, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxEditorForEditAction:(SEL)action withSender:(id)sender
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
  actionCopy = action;
  v7[4] = self;
  senderCopy = sender;
  v8 = senderCopy;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

@end