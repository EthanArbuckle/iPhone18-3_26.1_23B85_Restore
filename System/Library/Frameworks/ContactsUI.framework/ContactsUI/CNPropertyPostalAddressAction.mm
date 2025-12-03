@interface CNPropertyPostalAddressAction
- (void)performDefaultAppActionForItem:(id)item;
@end

@implementation CNPropertyPostalAddressAction

- (void)performDefaultAppActionForItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    v5 = MEMORY[0x1E695CF68];
    address = [v4 address];
    v7 = [v5 singleLineStringFromPostalAddress:address addCountryName:0];

    MKURLBuilderClass = get_MKURLBuilderClass();
    anyContactLegacyIdentifier = [v4 anyContactLegacyIdentifier];
    labeledValueMultiValueIdentifierForChosenSourceContact = [v4 labeledValueMultiValueIdentifierForChosenSourceContact];
    contact = [v4 contact];
    identifier = [contact identifier];
    labeledValue = [v4 labeledValue];
    identifier2 = [labeledValue identifier];
    v15 = [(objc_class *)MKURLBuilderClass URLForAddress:v7 abPersonID:anyContactLegacyIdentifier abAddressID:labeledValueMultiValueIdentifierForChosenSourceContact cnContactIdentifier:identifier cnAddressIdentifier:identifier2];

    if (([(objc_class *)get_MKURLHandlerClass() canHandleURL:v15]& 1) != 0)
    {
      v16 = +[CNUIDataCollector sharedCollector];
      v17 = CNUIContactActionTypeTapProperty;
      property = [v4 property];
      v24[0] = property;
      v23[1] = CNUIDataCollectorActionTypeAttributeContact;
      contact2 = [v4 contact];
      v24[1] = contact2;
      v23[2] = CNUIDataCollectorActionTypeAttributeLabeledValue;
      labeledValue2 = [v4 labeledValue];
      v24[2] = labeledValue2;
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