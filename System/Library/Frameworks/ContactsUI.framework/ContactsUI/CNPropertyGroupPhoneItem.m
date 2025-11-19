@interface CNPropertyGroupPhoneItem
- (CNPhoneNumber)phoneNumber;
- (id)bestLabel:(id)a3;
- (id)defaultActionURL;
- (id)displayStringForValue:(id)a3;
- (id)normalizedValue;
@end

@implementation CNPropertyGroupPhoneItem

- (id)displayStringForValue:(id)a3
{
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];

  v5 = [v4 formattedStringValue];

  return v5;
}

- (id)bestLabel:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNPropertyGroupPhoneItem;
  v5 = [(CNPropertyGroupItem *)&v17 bestLabel:v4];
  v6 = *MEMORY[0x1E695CBC0];
  v7 = [(CNPropertyGroupItem *)v4 labeledValue];
  v8 = [v7 label];
  v9 = [v6 compare:v8 options:1];

  if (v9)
  {
    v10 = [(CNPropertyGroupItem *)self labeledValue];
    v11 = [v10 label];
    v12 = [v6 compare:v11 options:1];

    if (v12)
    {
      v13 = v5;
      goto LABEL_7;
    }

    v14 = self;
  }

  else
  {
    v14 = v4;
  }

  v15 = [(CNPropertyGroupItem *)v14 labeledValue];
  v13 = [v15 label];

LABEL_7:

  return v13;
}

- (id)defaultActionURL
{
  if (![(CNPropertyGroupItem *)self allowsPhone])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v3 = objc_alloc(MEMORY[0x1E6996A90]);
  v4 = [(CNPropertyGroupPhoneItem *)self phoneNumber];
  v5 = [v4 stringValue];
  v6 = [v3 initWithStringValue:v5 type:2];

  v7 = [(CNPropertyGroupItem *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [(CNPropertyGroupItem *)self delegate];
  v9 = [v8 geminiDataSource];
  v10 = [v9 channelIdentifier];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

LABEL_7:
    v15 = MEMORY[0x1E695DFF8];
    v16 = [(CNPropertyGroupItem *)self contactProperty];
    v17 = [v16 sourceContact];
    v11 = [v15 _cnui_telephonyURLWithHandle:v6 contact:v17 preferDefaultApp:1];

    goto LABEL_8;
  }

  v12 = MEMORY[0x1E695DFF8];
  v13 = [(CNPropertyGroupItem *)self contactProperty];
  v14 = [v13 sourceContact];
  v11 = [v12 _cnui_telephonyURLWithHandle:v6 contact:v14 channelIdentifier:v10 preferDefaultApp:1];

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
  v2 = [(CNPropertyGroupPhoneItem *)self phoneNumber];
  v3 = [v2 stringValue];

  return v3;
}

- (CNPhoneNumber)phoneNumber
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  return v3;
}

@end