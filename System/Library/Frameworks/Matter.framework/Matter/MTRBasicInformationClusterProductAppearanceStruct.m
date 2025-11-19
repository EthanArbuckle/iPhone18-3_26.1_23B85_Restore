@interface MTRBasicInformationClusterProductAppearanceStruct
- (MTRBasicInformationClusterProductAppearanceStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRBasicInformationClusterProductAppearanceStruct

- (MTRBasicInformationClusterProductAppearanceStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRBasicInformationClusterProductAppearanceStruct;
  v2 = [(MTRBasicInformationClusterProductAppearanceStruct *)&v7 init];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRBasicInformationClusterProductAppearanceStruct);
  v5 = [(MTRBasicInformationClusterProductAppearanceStruct *)self finish];
  [(MTRBasicInformationClusterProductAppearanceStruct *)v4 setFinish:v5];

  v6 = [(MTRBasicInformationClusterProductAppearanceStruct *)self primaryColor];
  [(MTRBasicInformationClusterProductAppearanceStruct *)v4 setPrimaryColor:v6];

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