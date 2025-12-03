@interface MessagesAutoConfirmSettingsController
- (_TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)specifier;
- (id)getMessageWithoutConfEnabledWithSpecifier:(id)specifier;
- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)setMessageWithoutConfCarPlayEnabled:(id)enabled specifier:(id)specifier;
- (void)setMessageWithoutConfEnabled:(id)enabled specifier:(id)specifier;
- (void)setMessageWithoutConfHeadphonesEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation MessagesAutoConfirmSettingsController

- (id)specifiers
{
  selfCopy = self;
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

- (void)setMessageWithoutConfEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_1D1B0();
}

- (id)getMessageWithoutConfEnabledWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  v6.super.super.isa = sub_1D5E0().super.super.isa;

  return v6.super.super.isa;
}

- (void)setMessageWithoutConfHeadphonesEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_1DC14(enabledCopy, v8);
}

- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  v6.super.super.isa = sub_1DCA0(selfCopy).super.super.isa;

  return v6.super.super.isa;
}

- (void)setMessageWithoutConfCarPlayEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_1DD10(enabledCopy, v8);
}

- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  v6.super.super.isa = sub_1DF4C(selfCopy).super.super.isa;

  return v6.super.super.isa;
}

- (_TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21EF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E18C(v5, v7, bundle);
}

@end