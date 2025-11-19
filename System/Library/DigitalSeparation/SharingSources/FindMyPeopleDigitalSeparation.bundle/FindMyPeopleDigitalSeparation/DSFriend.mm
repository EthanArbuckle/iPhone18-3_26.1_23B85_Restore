@interface DSFriend
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (NSString)unifiedContactIdentifier;
- (_TtC29FindMyPeopleDigitalSeparation8DSFriend)init;
@end

@implementation DSFriend

- (NSString)unifiedContactIdentifier
{
  if (*(&self->role + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier))
  {
    v2 = *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier);
    v3 = *(&self->role + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier);

    v4 = sub_7F54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)emailAddress
{
  v3 = objc_opt_self();
  v4 = (self + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
  v6 = *(&self->role + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
  v7 = self;
  v8 = sub_7F54();
  LOBYTE(v3) = [v3 isStringEmailAddress:v8];

  if (v3)
  {
    v9 = *v4;
    v10 = v4[1];

    v11 = sub_7F54();

    v12 = v11;
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (NSString)phoneNumber
{
  v3 = objc_opt_self();
  v4 = (self + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
  v6 = *(&self->role + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
  v7 = self;
  v8 = sub_7F54();
  LODWORD(v3) = [v3 isStringEmailAddress:v8];

  if (v3)
  {

    v9 = 0;
  }

  else
  {
    v10 = *v4;
    v11 = v4[1];

    v12 = sub_7F54();

    v9 = v12;
  }

  return v9;
}

- (_TtC29FindMyPeopleDigitalSeparation8DSFriend)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end