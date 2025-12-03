@interface MTRChimeClusterChimeSoundStruct
- (MTRChimeClusterChimeSoundStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChimeClusterChimeSoundStruct

- (MTRChimeClusterChimeSoundStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRChimeClusterChimeSoundStruct;
  v2 = [(MTRChimeClusterChimeSoundStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    chimeID = v2->_chimeID;
    v2->_chimeID = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChimeClusterChimeSoundStruct);
  chimeID = [(MTRChimeClusterChimeSoundStruct *)self chimeID];
  [(MTRChimeClusterChimeSoundStruct *)v4 setChimeID:chimeID];

  name = [(MTRChimeClusterChimeSoundStruct *)self name];
  [(MTRChimeClusterChimeSoundStruct *)v4 setName:name];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: chimeID:%@ name:%@; >", v5, self->_chimeID, self->_name];;

  return v6;
}

@end