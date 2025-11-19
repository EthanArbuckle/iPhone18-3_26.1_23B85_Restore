@interface CNPropertyPostalAddressAction
- (void)performDefaultAppActionForItem:(id)a3;
@end

@implementation CNPropertyPostalAddressAction

- (void)performDefaultAppActionForItem:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = MEMORY[0x1E695CF68];
    v6 = [v4 address];
    v7 = [v5 singleLineStringFromPostalAddress:v6 addCountryName:0];

    MKURLBuilderClass = get_MKURLBuilderClass();
    v9 = [v4 anyContactLegacyIdentifier];
    v10 = [v4 labeledValueMultiValueIdentifierForChosenSourceContact];
    v11 = [v4 contact];
    v12 = [v11 identifier];
    v13 = [v4 labeledValue];
    v14 = [v13 identifier];
    v15 = [(objc_class *)MKURLBuilderClass URLForAddress:v7 abPersonID:v9 abAddressID:v10 cnContactIdentifier:v12 cnAddressIdentifier:v14];

    if (([(objc_class *)get_MKURLHandlerClass() canHandleURL:v15]& 1) != 0)
    {
      v16 = +[CNUIDataCollector sharedCollector];
      v17 = CNUIContactActionTypeTapProperty;
      v18 = [v4 property];
      v24[0] = v18;
      v23[1] = CNUIDataCollectorActionTypeAttributeContact;
      v19 = [v4 contact];
      v24[1] = v19;
      v23[2] = CNUIDataCollectorActionTypeAttributeLabeledValue;
      v20 = [v4 labeledValue];
      v24[2] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
      [v16 logContactActionType:v17 attributes:v21];

      [(objc_class *)getMKMapItemClass() _openDefaultNavigationWithURL:v15 fromScene:0 completionHandler:0];
    }

    else
    {
      v22 = CNUILogContactCard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v4;
        v27 = 2112;
        v28 = v15;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "%@: MKURLHandler can't handle URL %@", buf, 0x16u);
      }
    }
  }
}

@end