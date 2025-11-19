@interface CTIPFilter
- (CTIPFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTIPFilter

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", id=%lu", -[CTIPFilter filterId](self, "filterId")];
  [v3 appendFormat:@", precedence=%lu", -[CTIPFilter precedence](self, "precedence")];
  [v3 appendFormat:@", ipProtocol=%lu", -[CTIPFilter ipProtocol](self, "ipProtocol")];
  [v3 appendFormat:@", ipFamilyProtocol=%lu", -[CTIPFilter ipFamilyProtocol](self, "ipFamilyProtocol")];
  v4 = [(CTIPFilter *)self tos];

  if (v4)
  {
    v5 = [(CTIPFilter *)self tos];
    [v3 appendFormat:@", tos=%@", v5];
  }

  v6 = [(CTIPFilter *)self tosMask];

  if (v6)
  {
    v7 = [(CTIPFilter *)self tosMask];
    [v3 appendFormat:@", tosMask=%@", v7];
  }

  v8 = [(CTIPFilter *)self src];

  if (v8)
  {
    v9 = [(CTIPFilter *)self src];
    [v3 appendFormat:@", src=%@", v9];
  }

  v10 = [(CTIPFilter *)self dst];

  if (v10)
  {
    v11 = [(CTIPFilter *)self dst];
    [v3 appendFormat:@", dst=%@", v11];
  }

  v12 = [(CTIPFilter *)self flowLabel];

  if (v12)
  {
    v13 = [(CTIPFilter *)self flowLabel];
    [v3 appendFormat:@", flowLabel=%@", v13];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setFilterId:{-[CTIPFilter filterId](self, "filterId")}];
  [v4 setPrecedence:{-[CTIPFilter precedence](self, "precedence")}];
  [v4 setIpProtocol:{-[CTIPFilter ipProtocol](self, "ipProtocol")}];
  [v4 setIpFamilyProtocol:{-[CTIPFilter ipFamilyProtocol](self, "ipFamilyProtocol")}];
  v5 = [(CTIPFilter *)self tos];
  v6 = [v5 copy];
  [v4 setTos:v6];

  v7 = [(CTIPFilter *)self tosMask];
  v8 = [v7 copy];
  [v4 setTosMask:v8];

  v9 = [(CTIPFilter *)self src];
  v10 = [v9 copy];
  [v4 setSrc:v10];

  v11 = [(CTIPFilter *)self dst];
  v12 = [v11 copy];
  [v4 setDst:v12];

  v13 = [(CTIPFilter *)self flowLabel];
  v14 = [v13 copy];
  [v4 setFlowLabel:v14];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[CTIPFilter filterId](self forKey:{"filterId"), @"id"}];
  [v4 encodeInt:-[CTIPFilter precedence](self forKey:{"precedence"), @"precedence"}];
  [v4 encodeInt:-[CTIPFilter ipProtocol](self forKey:{"ipProtocol"), @"ipProtocol"}];
  [v4 encodeInt:-[CTIPFilter ipFamilyProtocol](self forKey:{"ipFamilyProtocol"), @"ipFamilyProtocol"}];
  v5 = [(CTIPFilter *)self tos];
  [v4 encodeObject:v5 forKey:@"tos"];

  v6 = [(CTIPFilter *)self tosMask];
  [v4 encodeObject:v6 forKey:@"tosMask"];

  v7 = [(CTIPFilter *)self src];
  [v4 encodeObject:v7 forKey:@"src"];

  v8 = [(CTIPFilter *)self dst];
  [v4 encodeObject:v8 forKey:@"dst"];

  v9 = [(CTIPFilter *)self flowLabel];
  [v4 encodeObject:v9 forKey:@"flowLabel"];
}

- (CTIPFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CTIPFilter;
  v5 = [(CTIPFilter *)&v17 init];
  if (v5)
  {
    v5->_filterId = [v4 decodeIntForKey:@"id"];
    v5->_precedence = [v4 decodeIntForKey:@"precedence"];
    v5->_ipProtocol = [v4 decodeIntForKey:@"ipProtocol"];
    v5->_ipFamilyProtocol = [v4 decodeIntForKey:@"ipFamilyProtocol"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tos"];
    tos = v5->_tos;
    v5->_tos = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tosMask"];
    tosMask = v5->_tosMask;
    v5->_tosMask = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"src"];
    src = v5->_src;
    v5->_src = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dst"];
    dst = v5->_dst;
    v5->_dst = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowLabel"];
    flowLabel = v5->_flowLabel;
    v5->_flowLabel = v14;
  }

  return v5;
}

@end