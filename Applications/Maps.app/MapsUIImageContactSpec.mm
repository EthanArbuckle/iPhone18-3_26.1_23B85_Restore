@interface MapsUIImageContactSpec
- (BOOL)isEqual:(id)equal;
- (MapsUIImageContactSpec)init;
- (double)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageForScale:(double)scale isCarPlay:(BOOL)play;
- (unint64_t)hash;
@end

@implementation MapsUIImageContactSpec

- (id)description
{
  v3 = objc_opt_class();
  contact = [(MapsUIImageContactSpec *)self contact];
  style = [(MapsUIImageContactSpec *)self style];
  [(MapsUIImageContactSpec *)self size];
  v7 = v6;
  tintColor = [(MapsUIImageContactSpec *)self tintColor];
  v9 = [NSString stringWithFormat:@"<%@: %p contact=%@ style=%lu size=%lu tintColor=%@ useAvatarImageRendered=%d>", v3, self, contact, style, v7, tintColor, [(MapsUIImageContactSpec *)self useAvatarImageRendered]];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contact = [(MapsUIImageContactSpec *)self contact];
    contact2 = [v5 contact];
    v8 = [contact isEqual:contact2];

    if (v8 && (v9 = -[MapsUIImageContactSpec style](self, "style"), v9 == [v5 style]) && (-[MapsUIImageContactSpec size](self, "size"), v11 = v10, objc_msgSend(v5, "size"), v11 == v12) && (-[MapsUIImageContactSpec tintColor](self, "tintColor"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "tintColor"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v13 == v14))
    {
      useAvatarImageRendered = [(MapsUIImageContactSpec *)self useAvatarImageRendered];
      v15 = useAvatarImageRendered ^ [v5 useAvatarImageRendered] ^ 1;
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
  contact = [(MapsUIImageContactSpec *)self contact];
  v4 = [contact hash];
  v5 = [NSNumber numberWithInteger:[(MapsUIImageContactSpec *)self style]];
  v6 = v4 ^ ([v5 hash] << 8);
  [(MapsUIImageContactSpec *)self size];
  v7 = [NSNumber numberWithDouble:?];
  v8 = v6 ^ ([v7 hash] << 16);
  tintColor = [(MapsUIImageContactSpec *)self tintColor];
  v10 = v8 ^ [tintColor hash];
  v11 = [NSNumber numberWithBool:[(MapsUIImageContactSpec *)self useAvatarImageRendered]];
  v12 = v10 ^ ([v11 hash] << 24);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  contact = [(MapsUIImageContactSpec *)self contact];
  [v4 setContact:contact];

  [v4 setStyle:{-[MapsUIImageContactSpec style](self, "style")}];
  [(MapsUIImageContactSpec *)self size];
  [v4 setSize:?];
  tintColor = [(MapsUIImageContactSpec *)self tintColor];
  [v4 setTintColor:tintColor];

  [v4 setUseAvatarImageRendered:{-[MapsUIImageContactSpec useAvatarImageRendered](self, "useAvatarImageRendered")}];
  return v4;
}

- (id)imageForScale:(double)scale isCarPlay:(BOOL)play
{
  if ([(MapsUIImageContactSpec *)self useAvatarImageRendered:play])
  {
    [(MapsUIImageContactSpec *)self size];
    v6 = v5;
    [(MapsUIImageContactSpec *)self size];
    v8 = v7;
    v9 = +[MKSystemController sharedInstance];
    [v9 screenScale];
    v11 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:v6 style:v8, v10];

    contact2 = objc_alloc_init(CNAvatarImageRenderer);
    contact = [(MapsUIImageContactSpec *)self contact];
    v20 = contact;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v15 = [contact2 avatarImageForContacts:v14 scope:v11];
  }

  else
  {
    v16 = [CNMonogrammer alloc];
    style = [(MapsUIImageContactSpec *)self style];
    [(MapsUIImageContactSpec *)self size];
    v11 = [v16 initWithStyle:style diameter:?];
    tintColor = [(MapsUIImageContactSpec *)self tintColor];
    [v11 monogramsWithTint:tintColor];

    contact2 = [(MapsUIImageContactSpec *)self contact];
    v15 = [v11 monogramForContact:contact2];
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