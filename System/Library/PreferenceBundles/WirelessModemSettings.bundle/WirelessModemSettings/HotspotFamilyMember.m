@interface HotspotFamilyMember
- (HotspotFamilyMember)init;
- (HotspotFamilyMember)initWithAltDSID:(id)a3 displayName:(id)a4 shareOption:(int)a5;
@end

@implementation HotspotFamilyMember

- (HotspotFamilyMember)init
{
  v5.receiver = self;
  v5.super_class = HotspotFamilyMember;
  v2 = [(HotspotFamilyMember *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HotspotFamilyMember *)v2 setAltDSID:&stru_284EED640];
    [(HotspotFamilyMember *)v3 setDisplayName:&stru_284EED640];
    [(HotspotFamilyMember *)v3 setShareOption:1];
  }

  return v3;
}

- (HotspotFamilyMember)initWithAltDSID:(id)a3 displayName:(id)a4 shareOption:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HotspotFamilyMember;
  v10 = [(HotspotFamilyMember *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HotspotFamilyMember *)v10 setAltDSID:v8];
    [(HotspotFamilyMember *)v11 setDisplayName:v9];
    [(HotspotFamilyMember *)v11 setShareOption:v5];
  }

  return v11;
}

@end