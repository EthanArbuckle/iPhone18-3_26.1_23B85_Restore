@interface CNPropertyGroupPhoneItem
- (CNPhoneNumber)phoneNumber;
- (id)bestLabel:(id)label;
- (id)defaultActionURL;
- (id)displayStringForValue:(id)value;
- (id)normalizedValue;
@end

@implementation CNPropertyGroupPhoneItem

- (id)displayStringForValue:(id)value
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  formattedStringValue = [value formattedStringValue];

  return formattedStringValue;
}

- (id)bestLabel:(id)label
{
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = CNPropertyGroupPhoneItem;
  v5 = [(CNPropertyGroupItem *)&v17 bestLabel:labelCopy];
  v6 = *MEMORY[0x1E695CBC0];
  labeledValue = [(CNPropertyGroupItem *)labelCopy labeledValue];
  label = [labeledValue label];
  v9 = [v6 compare:label options:1];

  if (v9)
  {
    labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
    label2 = [labeledValue2 label];
    v12 = [v6 compare:label2 options:1];

    if (v12)
    {
      label3 = v5;
      goto LABEL_7;
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = labelCopy;
  }

  labeledValue3 = [(CNPropertyGroupItem *)selfCopy labeledValue];
  label3 = [labeledValue3 label];

LABEL_7:

  return label3;
}

- (id)defaultActionURL
{
  if (![(CNPropertyGroupItem *)self allowsPhone])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v3 = objc_alloc(MEMORY[0x1E6996A90]);
  phoneNumber = [(CNPropertyGroupPhoneItem *)self phoneNumber];
  stringValue = [phoneNumber stringValue];
  v6 = [v3 initWithStringValue:stringValue type:2];

  delegate = [(CNPropertyGroupItem *)self delegate];
  LOBYTE(stringValue) = objc_opt_respondsToSelector();

  if ((stringValue & 1) == 0)
  {
    goto LABEL_7;
  }

  delegate2 = [(CNPropertyGroupItem *)self delegate];
  geminiDataSource = [delegate2 geminiDataSource];
  channelIdentifier = [geminiDataSource channelIdentifier];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

LABEL_7:
    v15 = MEMORY[0x1E695DFF8];
    contactProperty = [(CNPropertyGroupItem *)self contactProperty];
    sourceContact = [contactProperty sourceContact];
    v11 = [v15 _cnui_telephonyURLWithHandle:v6 contact:sourceContact preferDefaultApp:1];

    goto LABEL_8;
  }

  v12 = MEMORY[0x1E695DFF8];
  contactProperty2 = [(CNPropertyGroupItem *)self contactProperty];
  sourceContact2 = [contactProperty2 sourceContact];
  v11 = [v12 _cnui_telephonyURLWithHandle:v6 contact:sourceContact2 channelIdentifier:channelIdentifier preferDefaultApp:1];

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return v11;
}

- (id)normalizedValue
{
  phoneNumber = [(CNPropertyGroupPhoneItem *)self phoneNumber];
  stringValue = [phoneNumber stringValue];

  return stringValue;
}

- (CNPhoneNumber)phoneNumber
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  return value;
}

@end