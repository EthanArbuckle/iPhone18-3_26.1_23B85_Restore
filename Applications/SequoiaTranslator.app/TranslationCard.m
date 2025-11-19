@interface TranslationCard
- (BOOL)_axCanPerformLookupAction;
- (BOOL)_axTranslationIsFavorited;
- (id)_axSenseHeader;
- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5;
- (void)disambiguableResult:(id)a3 didChangeResultForSentence:(id)a4 withSelection:(id)a5;
- (void)layoutSubviews;
- (void)senseTapped:(id)a3;
- (void)sourceTapped:(id)a3;
- (void)targetTapped:(id)a3;
@end

@implementation TranslationCard

- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1002931A4();

  return v12;
}

- (void)disambiguableResult:(id)a3 didChangeResultForSentence:(id)a4 withSelection:(id)a5
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedTranslation);
  if (v5)
  {
    v7 = self;
    v6 = v5;
    sub_10028A040(v6);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100295494();
}

- (void)sourceTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10029737C(v4);
}

- (void)targetTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002974EC(v4);
}

- (void)senseTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100297644(v4);
}

- (BOOL)_axTranslationIsFavorited
{
  v2 = self;
  v3 = sub_10002FC68();
  v4 = [(objc_class *)v3 isSelected];

  return v4;
}

- (BOOL)_axCanPerformLookupAction
{
  v2 = self;
  v3 = sub_10002FE8C();
  v4 = [(objc_class *)v3 isHidden];

  return v4 ^ 1;
}

- (id)_axSenseHeader
{
  v2 = self;
  v3 = sub_1002948D4();

  return v3;
}

@end