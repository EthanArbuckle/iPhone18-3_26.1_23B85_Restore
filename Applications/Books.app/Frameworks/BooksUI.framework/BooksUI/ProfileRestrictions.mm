@interface ProfileRestrictions
- (void)dealloc;
@end

@implementation ProfileRestrictions

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  [objc_msgSend(v3 "sharedInstance")];
  swift_unknownObjectRelease();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for ProfileRestrictions();
  [(ProfileRestrictions *)&v5 dealloc];
}

@end