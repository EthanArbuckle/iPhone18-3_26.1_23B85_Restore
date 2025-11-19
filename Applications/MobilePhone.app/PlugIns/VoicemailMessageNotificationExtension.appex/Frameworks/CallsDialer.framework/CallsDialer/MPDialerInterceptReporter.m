@interface MPDialerInterceptReporter
+ (NSString)eventName;
- (BOOL)appleSupport;
- (BOOL)autocomplete;
- (BOOL)savedContact;
- (MPDialerInterceptReporter)init;
- (int64_t)firstShownOption;
- (int64_t)secondShownOption;
- (int64_t)selectedOption;
- (void)log;
- (void)logWith:(int64_t)a3;
- (void)setAppleSupport:(BOOL)a3;
- (void)setAutocomplete:(BOOL)a3;
- (void)setFirstShownOption:(int64_t)a3;
- (void)setSavedContact:(BOOL)a3;
- (void)setSecondShownOption:(int64_t)a3;
- (void)setSelectedOption:(int64_t)a3;
- (void)updateForDialerResultPressed:(int64_t)a3 savedContact:(BOOL)a4;
@end

@implementation MPDialerInterceptReporter

+ (NSString)eventName
{
  v2 = sub_2D798();

  return v2;
}

- (BOOL)appleSupport
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAppleSupport:(BOOL)a3
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)autocomplete
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAutocomplete:(BOOL)a3
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)savedContact
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSavedContact:(BOOL)a3
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)selectedOption
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSelectedOption:(int64_t)a3
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)firstShownOption
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFirstShownOption:(int64_t)a3
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)secondShownOption
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSecondShownOption:(int64_t)a3
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)updateForDialerResultPressed:(int64_t)a3 savedContact:(BOOL)a4
{
  v6 = self;
  sub_2472C(a3, a4);
}

- (void)logWith:(int64_t)a3
{
  v4 = self;
  sub_24A04(a3);
}

- (void)log
{
  v2 = self;
  v3 = sub_2D798();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v7[4] = sub_2611C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_24C5C;
  v7[3] = &block_descriptor_38;
  v5 = _Block_copy(v7);
  v6 = v2;

  AnalyticsSendEventLazy();

  _Block_release(v5);
}

- (MPDialerInterceptReporter)init
{
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_appleSupport) = 0;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_autocomplete) = 0;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_savedContact) = 0;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_selectedOption) = (&dword_4 + 1);
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_firstShownOption) = (&dword_4 + 1);
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_secondShownOption) = (&dword_4 + 1);
  v3.receiver = self;
  v3.super_class = type metadata accessor for DialerInterceptReporter();
  return [(MPDialerInterceptReporter *)&v3 init];
}

@end