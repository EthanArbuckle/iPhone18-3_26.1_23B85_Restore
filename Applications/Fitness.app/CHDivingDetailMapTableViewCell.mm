@interface CHDivingDetailMapTableViewCell
- (CHDivingDetailMapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithDive:(id)dive row:(int64_t)row dataCalculator:(id)calculator;
- (void)prepareForReuse;
@end

@implementation CHDivingDetailMapTableViewCell

- (CHDivingDetailMapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100693FA0(style, identifier, v6);
}

- (void)configureWithDive:(id)dive row:(int64_t)row dataCalculator:(id)calculator
{
  diveCopy = dive;
  calculatorCopy = calculator;
  selfCopy = self;
  sub_100694190(diveCopy, row, calculatorCopy);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DivingDetailMapTableViewCell();
  v2 = v3.receiver;
  [(CHDivingDetailMapTableViewCell *)&v3 prepareForReuse];
  UITableViewCell.contentConfiguration.setter();
}

@end