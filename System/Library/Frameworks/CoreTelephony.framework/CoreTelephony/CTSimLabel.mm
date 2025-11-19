@interface CTSimLabel
- (BOOL)isEqual:(id)a3;
- (CTSimLabel)initWithCoder:(id)a3;
- (CTSimLabel)initWithId:(id)a3 andText:(id)a4 andDidSetup:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSimLabel

- (CTSimLabel)initWithId:(id)a3 andText:(id)a4 andDidSetup:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CTSimLabel;
  v11 = [(CTSimLabel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_unique_id, a3);
    objc_storeStrong(&v12->_text, a4);
    v12->_didSetup = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (v8 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(CTSimLabel *)self unique_id];
      v10 = [(CTSimLabel *)v8 unique_id];
      if (v9 != v10)
      {
        v3 = [(CTSimLabel *)self unique_id];
        v4 = [(CTSimLabel *)v8 unique_id];
        if (![v3 isEqualToString:v4])
        {
          LOBYTE(v11) = 0;
          goto LABEL_14;
        }
      }

      v12 = [(CTSimLabel *)self text];
      v13 = [(CTSimLabel *)v8 text];
      if (v12 == v13 || (-[CTSimLabel text](self, "text"), v5 = objc_claimAutoreleasedReturnValue(), -[CTSimLabel text](v8, "text"), v6 = objc_claimAutoreleasedReturnValue(), [v5 isEqualToString:v6]))
      {
        v14 = [(CTSimLabel *)self didSetup];
        v11 = v14 ^ [(CTSimLabel *)v8 didSetup]^ 1;
        if (v12 == v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

LABEL_13:
      if (v9 == v10)
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
  v4 = [(CTSimLabel *)self unique_id];
  [v3 appendFormat:@", unique-id=%@", v4];

  v5 = [(CTSimLabel *)self text];
  [v3 appendFormat:@", text=%@", v5];

  v6 = [(CTSimLabel *)self didSetup];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@", didSetup=%@", v7];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTSimLabel *)self unique_id];
  v6 = [v5 copy];
  [v4 setUnique_id:v6];

  v7 = [(CTSimLabel *)self text];
  v8 = [v7 copy];
  [v4 setText:v8];

  [v4 setDidSetup:{-[CTSimLabel didSetup](self, "didSetup")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CTSimLabel *)self unique_id];
  [v6 encodeObject:v4 forKey:@"unique-id"];

  v5 = [(CTSimLabel *)self text];
  [v6 encodeObject:v5 forKey:@"text"];

  [v6 encodeBool:-[CTSimLabel didSetup](self forKey:{"didSetup"), @"didSetup"}];
}

- (CTSimLabel)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTSimLabel;
  v5 = [(CTSimLabel *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unique-id"];
    unique_id = v5->_unique_id;
    v5->_unique_id = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v5->_didSetup = [v4 decodeBoolForKey:@"didSetup"];
  }

  return v5;
}

@end