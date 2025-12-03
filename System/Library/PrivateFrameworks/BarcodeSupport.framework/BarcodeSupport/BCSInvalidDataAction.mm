@interface BCSInvalidDataAction
- (BCSInvalidDataAction)initWithData:(id)data codePayload:(id)payload;
- (id)actionIconSystemImageName;
- (id)actionPickerItems;
- (id)localizedDefaultActionDescription;
@end

@implementation BCSInvalidDataAction

- (BCSInvalidDataAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = BCSInvalidDataAction;
    v8 = [(BCSAction *)&v15 initWithData:dataCopy codePayload:payloadCopy];
  }

  else
  {
    v9 = -[BCSInvalidParsedData initWithInvalidDataType:invalidContents:]([BCSInvalidParsedData alloc], "initWithInvalidDataType:invalidContents:", [dataCopy type], 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [dataCopy url];
      scheme = [v10 scheme];
      [(BCSInvalidParsedData *)v9 setInvalidURLScheme:scheme];

      absoluteString = [v10 absoluteString];
      [(BCSInvalidParsedData *)v9 setInvalidContents:absoluteString];
    }

    v14.receiver = self;
    v14.super_class = BCSInvalidDataAction;
    v8 = [(BCSAction *)&v14 initWithData:v9 codePayload:payloadCopy];
  }

  return v8;
}

- (id)localizedDefaultActionDescription
{
  codePayload = [(BCSAction *)self codePayload];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [codePayload version] >= 4)
  {
    v4 = @"This code is not compatible with this version of iOS";
  }

  else
  {
    data = [(BCSAction *)self data];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      data2 = [(BCSAction *)self data];
      if ([data2 invalidDataType] == 17)
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
  codePayload = [(BCSAction *)self codePayload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    actionIconSystemImageName = @"appclip";
    goto LABEL_8;
  }

  data = [(BCSAction *)self data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data2 = [(BCSAction *)self data];
    invalidDataType = [data2 invalidDataType];

    if (invalidDataType == 17)
    {
      actionIconSystemImageName = @"person.text.rectangle.fill";
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = BCSInvalidDataAction;
  actionIconSystemImageName = [(BCSAction *)&v10 actionIconSystemImageName];
LABEL_8:

  return actionIconSystemImageName;
}

- (id)actionPickerItems
{
  v11[1] = *MEMORY[0x277D85DE8];
  data = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    data2 = [(BCSAction *)self data];
    invalidContents = [data2 invalidContents];
    if ([invalidContents length])
    {
      v7 = [[BCSCopyActionPickerItem alloc] initWithAction:self textToCopy:invalidContents];
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