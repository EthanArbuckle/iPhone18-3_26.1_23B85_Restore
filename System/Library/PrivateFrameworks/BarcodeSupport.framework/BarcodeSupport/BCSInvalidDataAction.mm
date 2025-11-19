@interface BCSInvalidDataAction
- (BCSInvalidDataAction)initWithData:(id)a3 codePayload:(id)a4;
- (id)actionIconSystemImageName;
- (id)actionPickerItems;
- (id)localizedDefaultActionDescription;
@end

@implementation BCSInvalidDataAction

- (BCSInvalidDataAction)initWithData:(id)a3 codePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = BCSInvalidDataAction;
    v8 = [(BCSAction *)&v15 initWithData:v6 codePayload:v7];
  }

  else
  {
    v9 = -[BCSInvalidParsedData initWithInvalidDataType:invalidContents:]([BCSInvalidParsedData alloc], "initWithInvalidDataType:invalidContents:", [v6 type], 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 url];
      v11 = [v10 scheme];
      [(BCSInvalidParsedData *)v9 setInvalidURLScheme:v11];

      v12 = [v10 absoluteString];
      [(BCSInvalidParsedData *)v9 setInvalidContents:v12];
    }

    v14.receiver = self;
    v14.super_class = BCSInvalidDataAction;
    v8 = [(BCSAction *)&v14 initWithData:v9 codePayload:v7];
  }

  return v8;
}

- (id)localizedDefaultActionDescription
{
  v3 = [(BCSAction *)self codePayload];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 version] >= 4)
  {
    v4 = @"This code is not compatible with this version of iOS";
  }

  else
  {
    v5 = [(BCSAction *)self data];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(BCSAction *)self data];
      if ([v7 invalidDataType] == 17)
      {
        v8 = _BCSLocalizedString(@"Device not supported", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);

        goto LABEL_10;
      }
    }

    v4 = @"No usable data found";
  }

  v8 = _BCSLocalizedString(v4, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
LABEL_10:

  return v8;
}

- (id)actionIconSystemImageName
{
  v3 = [(BCSAction *)self codePayload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = @"appclip";
    goto LABEL_8;
  }

  v6 = [(BCSAction *)self data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(BCSAction *)self data];
    v8 = [v7 invalidDataType];

    if (v8 == 17)
    {
      v5 = @"person.text.rectangle.fill";
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = BCSInvalidDataAction;
  v5 = [(BCSAction *)&v10 actionIconSystemImageName];
LABEL_8:

  return v5;
}

- (id)actionPickerItems
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(BCSAction *)self data];
    v6 = [v5 invalidContents];
    if ([v6 length])
    {
      v7 = [[BCSCopyActionPickerItem alloc] initWithAction:self textToCopy:v6];
      v11[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end