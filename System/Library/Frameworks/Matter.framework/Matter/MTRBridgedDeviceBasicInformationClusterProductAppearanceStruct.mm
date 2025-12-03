@interface MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct
- (MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct

- (MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct;
  v2 = [(MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    finish = v2->_finish;
    v2->_finish = &unk_284C3E588;

    primaryColor = v3->_primaryColor;
    v3->_primaryColor = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct);
  finish = [(MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct *)self finish];
  [(MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct *)v4 setFinish:finish];

  primaryColor = [(MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct *)self primaryColor];
  [(MTRBridgedDeviceBasicInformationClusterProductAppearanceStruct *)v4 setPrimaryColor:primaryColor];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: finish:%@ primaryColor:%@; >", v5, self->_finish, self->_primaryColor];;

  return v6;
}

@end