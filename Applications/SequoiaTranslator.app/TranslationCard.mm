@interface TranslationCard
- (BOOL)_axCanPerformLookupAction;
- (BOOL)_axTranslationIsFavorited;
- (id)_axSenseHeader;
- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu;
- (void)disambiguableResult:(id)result didChangeResultForSentence:(id)sentence withSelection:(id)selection;
- (void)layoutSubviews;
- (void)senseTapped:(id)tapped;
- (void)sourceTapped:(id)tapped;
- (void)targetTapped:(id)tapped;
@end

@implementation TranslationCard

- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu
{
  viewCopy = view;
  itemCopy = item;
  menuCopy = menu;
  selfCopy = self;
  v12 = sub_1002931A4();

  return v12;
}

- (void)disambiguableResult:(id)result didChangeResultForSentence:(id)sentence withSelection:(id)selection
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedTranslation);
  if (v5)
  {
    selfCopy = self;
    v6 = v5;
    sub_10028A040(v6);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100295494();
}

- (void)sourceTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10029737C(tappedCopy);
}

- (void)targetTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1002974EC(tappedCopy);
}

- (void)senseTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100297644(tappedCopy);
}

- (BOOL)_axTranslationIsFavorited
{
  selfCopy = self;
  v3 = sub_10002FC68();
  isSelected = [(objc_class *)v3 isSelected];

  return isSelected;
}

- (BOOL)_axCanPerformLookupAction
{
  selfCopy = self;
  v3 = sub_10002FE8C();
  isHidden = [(objc_class *)v3 isHidden];

  return isHidden ^ 1;
}

- (id)_axSenseHeader
{
  selfCopy = self;
  v3 = sub_1002948D4();

  return v3;
}

@end