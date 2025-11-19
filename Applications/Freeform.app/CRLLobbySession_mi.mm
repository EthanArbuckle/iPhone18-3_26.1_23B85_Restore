@interface CRLLobbySession_mi
- (BOOL)isEqual:(id)a3;
- (CRLLobbySession_mi)initWithDisplayName:(id)a3 indicatorDarkColor:(id)a4 cnContact:(id)a5;
- (id)description;
@end

@implementation CRLLobbySession_mi

- (CRLLobbySession_mi)initWithDisplayName:(id)a3 indicatorDarkColor:(id)a4 cnContact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CRLLobbySession_mi;
  v11 = [(CRLLobbySession_mi *)&v18 init];
  if (v11)
  {
    v12 = [v8 crl_substringWithComposedCharacterSequencesTruncatedToLength:30];
    v13 = [v12 copy];
    displayName = v11->_displayName;
    v11->_displayName = v13;

    v15 = [v9 copy];
    indicatorDarkColor = v11->_indicatorDarkColor;
    v11->_indicatorDarkColor = v15;

    objc_storeStrong(&v11->_cnContact, a5);
  }

  return v11;
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = CRLLobbySession_mi;
  v2 = [(CRLLobbySession_mi *)&v5 description];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);

    if (v6)
    {
      v7 = v6[1];
      v8 = self->_displayName;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {

        goto LABEL_10;
      }

      if (v8 && v9)
      {
        v11 = [(NSString *)v8 isEqualToString:v9];

        if (!v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        indicatorDarkColor = self->_indicatorDarkColor;
        if (indicatorDarkColor | v6[2])
        {
          v12 = [(CRLColor *)indicatorDarkColor isEqual:?];
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_14;
      }
    }

LABEL_13:
    v12 = 0;
LABEL_14:

    return v12;
  }

  return 1;
}

@end