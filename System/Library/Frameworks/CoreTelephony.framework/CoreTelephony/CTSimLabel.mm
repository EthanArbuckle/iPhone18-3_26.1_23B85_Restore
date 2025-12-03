@interface CTSimLabel
- (BOOL)isEqual:(id)equal;
- (CTSimLabel)initWithCoder:(id)coder;
- (CTSimLabel)initWithId:(id)id andText:(id)text andDidSetup:(BOOL)setup;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSimLabel

- (CTSimLabel)initWithId:(id)id andText:(id)text andDidSetup:(BOOL)setup
{
  idCopy = id;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = CTSimLabel;
  v11 = [(CTSimLabel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_unique_id, id);
    objc_storeStrong(&v12->_text, text);
    v12->_didSetup = setup;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unique_id = [(CTSimLabel *)self unique_id];
      unique_id2 = [(CTSimLabel *)equalCopy unique_id];
      if (unique_id != unique_id2)
      {
        unique_id3 = [(CTSimLabel *)self unique_id];
        unique_id4 = [(CTSimLabel *)equalCopy unique_id];
        if (![unique_id3 isEqualToString:unique_id4])
        {
          LOBYTE(v11) = 0;
          goto LABEL_14;
        }
      }

      text = [(CTSimLabel *)self text];
      text2 = [(CTSimLabel *)equalCopy text];
      if (text == text2 || (-[CTSimLabel text](self, "text"), v5 = objc_claimAutoreleasedReturnValue(), -[CTSimLabel text](equalCopy, "text"), v6 = objc_claimAutoreleasedReturnValue(), [v5 isEqualToString:v6]))
      {
        didSetup = [(CTSimLabel *)self didSetup];
        v11 = didSetup ^ [(CTSimLabel *)equalCopy didSetup]^ 1;
        if (text == text2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

LABEL_13:
      if (unique_id == unique_id2)
      {
LABEL_15:

        goto LABEL_16;
      }

LABEL_14:

      goto LABEL_15;
    }

    LOBYTE(v11) = 0;
  }

LABEL_16:

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  unique_id = [(CTSimLabel *)self unique_id];
  [v3 appendFormat:@", unique-id=%@", unique_id];

  text = [(CTSimLabel *)self text];
  [v3 appendFormat:@", text=%@", text];

  didSetup = [(CTSimLabel *)self didSetup];
  v7 = @"NO";
  if (didSetup)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@", didSetup=%@", v7];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  unique_id = [(CTSimLabel *)self unique_id];
  v6 = [unique_id copy];
  [v4 setUnique_id:v6];

  text = [(CTSimLabel *)self text];
  v8 = [text copy];
  [v4 setText:v8];

  [v4 setDidSetup:{-[CTSimLabel didSetup](self, "didSetup")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  unique_id = [(CTSimLabel *)self unique_id];
  [coderCopy encodeObject:unique_id forKey:@"unique-id"];

  text = [(CTSimLabel *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  [coderCopy encodeBool:-[CTSimLabel didSetup](self forKey:{"didSetup"), @"didSetup"}];
}

- (CTSimLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTSimLabel;
  v5 = [(CTSimLabel *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unique-id"];
    unique_id = v5->_unique_id;
    v5->_unique_id = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v5->_didSetup = [coderCopy decodeBoolForKey:@"didSetup"];
  }

  return v5;
}

@end