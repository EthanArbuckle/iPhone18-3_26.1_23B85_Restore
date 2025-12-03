@interface CTIPFilter
- (CTIPFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

  tosMask = [(CTIPFilter *)self tosMask];

  if (tosMask)
  {
    tosMask2 = [(CTIPFilter *)self tosMask];
    [v3 appendFormat:@", tosMask=%@", tosMask2];
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

  flowLabel = [(CTIPFilter *)self flowLabel];

  if (flowLabel)
  {
    flowLabel2 = [(CTIPFilter *)self flowLabel];
    [v3 appendFormat:@", flowLabel=%@", flowLabel2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setFilterId:{-[CTIPFilter filterId](self, "filterId")}];
  [v4 setPrecedence:{-[CTIPFilter precedence](self, "precedence")}];
  [v4 setIpProtocol:{-[CTIPFilter ipProtocol](self, "ipProtocol")}];
  [v4 setIpFamilyProtocol:{-[CTIPFilter ipFamilyProtocol](self, "ipFamilyProtocol")}];
  v5 = [(CTIPFilter *)self tos];
  v6 = [v5 copy];
  [v4 setTos:v6];

  tosMask = [(CTIPFilter *)self tosMask];
  v8 = [tosMask copy];
  [v4 setTosMask:v8];

  v9 = [(CTIPFilter *)self src];
  v10 = [v9 copy];
  [v4 setSrc:v10];

  v11 = [(CTIPFilter *)self dst];
  v12 = [v11 copy];
  [v4 setDst:v12];

  flowLabel = [(CTIPFilter *)self flowLabel];
  v14 = [flowLabel copy];
  [v4 setFlowLabel:v14];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[CTIPFilter filterId](self forKey:{"filterId"), @"id"}];
  [coderCopy encodeInt:-[CTIPFilter precedence](self forKey:{"precedence"), @"precedence"}];
  [coderCopy encodeInt:-[CTIPFilter ipProtocol](self forKey:{"ipProtocol"), @"ipProtocol"}];
  [coderCopy encodeInt:-[CTIPFilter ipFamilyProtocol](self forKey:{"ipFamilyProtocol"), @"ipFamilyProtocol"}];
  v5 = [(CTIPFilter *)self tos];
  [coderCopy encodeObject:v5 forKey:@"tos"];

  tosMask = [(CTIPFilter *)self tosMask];
  [coderCopy encodeObject:tosMask forKey:@"tosMask"];

  v7 = [(CTIPFilter *)self src];
  [coderCopy encodeObject:v7 forKey:@"src"];

  v8 = [(CTIPFilter *)self dst];
  [coderCopy encodeObject:v8 forKey:@"dst"];

  flowLabel = [(CTIPFilter *)self flowLabel];
  [coderCopy encodeObject:flowLabel forKey:@"flowLabel"];
}

- (CTIPFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTIPFilter;
  v5 = [(CTIPFilter *)&v17 init];
  if (v5)
  {
    v5->_filterId = [coderCopy decodeIntForKey:@"id"];
    v5->_precedence = [coderCopy decodeIntForKey:@"precedence"];
    v5->_ipProtocol = [coderCopy decodeIntForKey:@"ipProtocol"];
    v5->_ipFamilyProtocol = [coderCopy decodeIntForKey:@"ipFamilyProtocol"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tos"];
    tos = v5->_tos;
    v5->_tos = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tosMask"];
    tosMask = v5->_tosMask;
    v5->_tosMask = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"src"];
    src = v5->_src;
    v5->_src = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dst"];
    dst = v5->_dst;
    v5->_dst = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowLabel"];
    flowLabel = v5->_flowLabel;
    v5->_flowLabel = v14;
  }

  return v5;
}

@end