@interface COSPairingTableCell
- (COSPairingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation COSPairingTableCell

- (COSPairingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = COSPairingTableCell;
  return [(COSPairingTableCell *)&v6 initWithStyle:3 reuseIdentifier:a4 specifier:a5];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v23.receiver = self;
  v23.super_class = COSPairingTableCell;
  v4 = a3;
  [(COSPairingTableCell *)&v23 refreshCellContentsWithSpecifier:v4];
  v5 = [(COSPairingTableCell *)self titleLabel];
  v6 = [v4 name];
  [v5 setText:v6];

  v7 = [(COSPairingTableCell *)self titleLabel];
  v8 = BPSTextColor();
  [v7 setTextColor:v8];

  v9 = [(COSPairingTableCell *)self titleLabel];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v10];

  v11 = [v4 propertyForKey:@"PairingCellDevice"];

  v12 = [v11 valueForProperty:NRDevicePropertyProductType];
  v13 = BPSLocalizedVariantSizeForProductType();

  [PBBridgeWatchAttributeController materialFromDevice:v11];
  v14 = BPSLocalizedNameForMaterial();
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"GIZMO_DESCRIPTION_FORMAT_%@_%@" value:&stru_10026E598 table:@"Pairing"];
  v17 = [NSString stringWithFormat:v16, v13, v14, v23.receiver, v23.super_class];

  v18 = [(COSPairingTableCell *)self detailTextLabel];
  [v18 setText:v17];

  v19 = [(COSPairingTableCell *)self detailTextLabel];
  v20 = +[UIColor systemGrayColor];
  [v19 setTextColor:v20];

  v21 = [(COSPairingTableCell *)self detailTextLabel];
  v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v21 setFont:v22];
}

@end