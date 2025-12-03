@interface COSPairingTableCell
- (COSPairingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation COSPairingTableCell

- (COSPairingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = COSPairingTableCell;
  return [(COSPairingTableCell *)&v6 initWithStyle:3 reuseIdentifier:identifier specifier:specifier];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v23.receiver = self;
  v23.super_class = COSPairingTableCell;
  specifierCopy = specifier;
  [(COSPairingTableCell *)&v23 refreshCellContentsWithSpecifier:specifierCopy];
  titleLabel = [(COSPairingTableCell *)self titleLabel];
  name = [specifierCopy name];
  [titleLabel setText:name];

  titleLabel2 = [(COSPairingTableCell *)self titleLabel];
  v8 = BPSTextColor();
  [titleLabel2 setTextColor:v8];

  titleLabel3 = [(COSPairingTableCell *)self titleLabel];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [titleLabel3 setFont:v10];

  v11 = [specifierCopy propertyForKey:@"PairingCellDevice"];

  v12 = [v11 valueForProperty:NRDevicePropertyProductType];
  v13 = BPSLocalizedVariantSizeForProductType();

  [PBBridgeWatchAttributeController materialFromDevice:v11];
  v14 = BPSLocalizedNameForMaterial();
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"GIZMO_DESCRIPTION_FORMAT_%@_%@" value:&stru_10026E598 table:@"Pairing"];
  v17 = [NSString stringWithFormat:v16, v13, v14, v23.receiver, v23.super_class];

  detailTextLabel = [(COSPairingTableCell *)self detailTextLabel];
  [detailTextLabel setText:v17];

  detailTextLabel2 = [(COSPairingTableCell *)self detailTextLabel];
  v20 = +[UIColor systemGrayColor];
  [detailTextLabel2 setTextColor:v20];

  detailTextLabel3 = [(COSPairingTableCell *)self detailTextLabel];
  v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [detailTextLabel3 setFont:v22];
}

@end