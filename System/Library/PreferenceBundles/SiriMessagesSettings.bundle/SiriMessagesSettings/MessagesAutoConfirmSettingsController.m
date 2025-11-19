@interface MessagesAutoConfirmSettingsController
- (_TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)a3;
- (id)getMessageWithoutConfEnabledWithSpecifier:(id)a3;
- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)a3;
- (id)specifiers;
- (void)setMessageWithoutConfCarPlayEnabled:(id)a3 specifier:(id)a4;
- (void)setMessageWithoutConfEnabled:(id)a3 specifier:(id)a4;
- (void)setMessageWithoutConfHeadphonesEnabled:(id)a3 specifier:(id)a4;
@end

@implementation MessagesAutoConfirmSettingsController

- (id)specifiers
{
  v2 = self;
  sub_1CD10();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_21F74().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setMessageWithoutConfEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1B0();
}

- (id)getMessageWithoutConfEnabledWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.super.isa = sub_1D5E0().super.super.isa;

  return v6.super.super.isa;
}

- (void)setMessageWithoutConfHeadphonesEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  sub_1DC14(v6, v8);
}

- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.super.isa = sub_1DCA0(v5).super.super.isa;

  return v6.super.super.isa;
}

- (void)setMessageWithoutConfCarPlayEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  sub_1DD10(v6, v8);
}

- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.super.isa = sub_1DF4C(v5).super.super.isa;

  return v6.super.super.isa;
}

- (_TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21EF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1E18C(v5, v7, a4);
}

@end