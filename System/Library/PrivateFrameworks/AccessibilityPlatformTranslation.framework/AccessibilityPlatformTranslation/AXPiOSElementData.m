@interface AXPiOSElementData
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)uid;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AXPiOSElementData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(AXPiOSElementData *)self uid];
  [v4 setUid:{v5, v6}];
  [v4 setPid:{-[AXPiOSElementData pid](self, "pid")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 pid];
    if (v6 == -[AXPiOSElementData pid](self, "pid") && ([v5 uid], v8 = v7, -[AXPiOSElementData uid](self, "uid"), v8 == v9))
    {
      v10 = [v5 uid];
      v11 = v10 == [(AXPiOSElementData *)self uid];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  [(AXPiOSElementData *)self uid];
  v4 = [(AXPiOSElementData *)self uid]^ v3;
  return v4 ^ [(AXPiOSElementData *)self pid];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AXPiOSElementData;
  v4 = [(AXPiOSElementData *)&v8 description];
  [(AXPiOSElementData *)self uid];
  v6 = [v3 stringWithFormat:@"%@: hash: %llu, elementID: %llu, pid: %d", v4, v5, -[AXPiOSElementData uid](self, "uid"), -[AXPiOSElementData pid](self, "pid")];

  return v6;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)uid
{
  v2 = *(&self->_uid.elementOrHash + 4);
  v3 = *(&self->_pid + 1);
  result.var1 = v2;
  result.var0 = v3;
  return result;
}

@end