@interface MapsUIImageContactSpec
- (BOOL)isEqual:(id)a3;
- (MapsUIImageContactSpec)init;
- (double)size;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation MapsUIImageContactSpec

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MapsUIImageContactSpec *)self contact];
  v5 = [(MapsUIImageContactSpec *)self style];
  [(MapsUIImageContactSpec *)self size];
  v7 = v6;
  v8 = [(MapsUIImageContactSpec *)self tintColor];
  v9 = [NSString stringWithFormat:@"<%@: %p contact=%@ style=%lu size=%lu tintColor=%@ useAvatarImageRendered=%d>", v3, self, v4, v5, v7, v8, [(MapsUIImageContactSpec *)self useAvatarImageRendered]];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MapsUIImageContactSpec *)self contact];
    v7 = [v5 contact];
    v8 = [v6 isEqual:v7];

    if (v8 && (v9 = -[MapsUIImageContactSpec style](self, "style"), v9 == [v5 style]) && (-[MapsUIImageContactSpec size](self, "size"), v11 = v10, objc_msgSend(v5, "size"), v11 == v12) && (-[MapsUIImageContactSpec tintColor](self, "tintColor"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "tintColor"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v13 == v14))
    {
      v17 = [(MapsUIImageContactSpec *)self useAvatarImageRendered];
      v15 = v17 ^ [v5 useAvatarImageRendered] ^ 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(MapsUIImageContactSpec *)self contact];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithInteger:[(MapsUIImageContactSpec *)self style]];
  v6 = v4 ^ ([v5 hash] << 8);
  [(MapsUIImageContactSpec *)self size];
  v7 = [NSNumber numberWithDouble:?];
  v8 = v6 ^ ([v7 hash] << 16);
  v9 = [(MapsUIImageContactSpec *)self tintColor];
  v10 = v8 ^ [v9 hash];
  v11 = [NSNumber numberWithBool:[(MapsUIImageContactSpec *)self useAvatarImageRendered]];
  v12 = v10 ^ ([v11 hash] << 24);

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(MapsUIImageContactSpec *)self contact];
  [v4 setContact:v5];

  [v4 setStyle:{-[MapsUIImageContactSpec style](self, "style")}];
  [(MapsUIImageContactSpec *)self size];
  [v4 setSize:?];
  v6 = [(MapsUIImageContactSpec *)self tintColor];
  [v4 setTintColor:v6];

  [v4 setUseAvatarImageRendered:{-[MapsUIImageContactSpec useAvatarImageRendered](self, "useAvatarImageRendered")}];
  return v4;
}

- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4
{
  if ([(MapsUIImageContactSpec *)self useAvatarImageRendered:a4])
  {
    [(MapsUIImageContactSpec *)self size];
    v6 = v5;
    [(MapsUIImageContactSpec *)self size];
    v8 = v7;
    v9 = +[MKSystemController sharedInstance];
    [v9 screenScale];
    v11 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:v6 style:v8, v10];

    v12 = objc_alloc_init(CNAvatarImageRenderer);
    v13 = [(MapsUIImageContactSpec *)self contact];
    v20 = v13;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v15 = [v12 avatarImageForContacts:v14 scope:v11];
  }

  else
  {
    v16 = [CNMonogrammer alloc];
    v17 = [(MapsUIImageContactSpec *)self style];
    [(MapsUIImageContactSpec *)self size];
    v11 = [v16 initWithStyle:v17 diameter:?];
    v18 = [(MapsUIImageContactSpec *)self tintColor];
    [v11 monogramsWithTint:v18];

    v12 = [(MapsUIImageContactSpec *)self contact];
    v15 = [v11 monogramForContact:v12];
  }

  return v15;
}

- (double)size
{
  result = *&self->_style;
  if (result <= 0.0)
  {
    return 32.0;
  }

  return result;
}

- (MapsUIImageContactSpec)init
{
  v3.receiver = self;
  v3.super_class = MapsUIImageContactSpec;
  result = [(MapsUIImageContactSpec *)&v3 init];
  if (result)
  {
    result->_contact = 0;
  }

  return result;
}

@end