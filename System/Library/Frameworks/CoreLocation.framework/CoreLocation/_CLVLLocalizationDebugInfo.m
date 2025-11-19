@interface _CLVLLocalizationDebugInfo
- (_CLVLLocalizationDebugInfo)initWithCoder:(id)a3;
- (_CLVLLocalizationDebugInfo)initWithVLLocalizationDebugInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4;
- (void)dealloc;
@end

@implementation _CLVLLocalizationDebugInfo

- (_CLVLLocalizationDebugInfo)initWithVLLocalizationDebugInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CLVLLocalizationDebugInfo;
  result = [(_CLVLLocalizationDebugInfo *)&v5 init];
  if (result)
  {
    if (a3)
    {
      result->_maps488Details = 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVLLocalizationDebugInfo;
  [(_CLVLLocalizationDebugInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(_CLVLLocalizationMaps488Details *)self->_maps488Details copyWithZone:a3];
  return v5;
}

- (_CLVLLocalizationDebugInfo)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _CLVLLocalizationDebugInfo;
  result = [(_CLVLLocalizationDebugInfo *)&v4 init];
  if (result)
  {
    result->_maps488Details = 0;
  }

  return result;
}

- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4
{
  v7 = [a3 stringByAppendingString:@"\t"];
  v8 = [a4 stringByAppendingString:@"\t"];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<_CLVLLocalizationDebugInfo: %p> {\n%@.maps488Details = %@\n%@}", self, a3, -[_CLVLLocalizationMaps488Details descriptionWithMemberIndent:endIndent:](-[_CLVLLocalizationDebugInfo maps488Details](self, "maps488Details"), "descriptionWithMemberIndent:endIndent:", v7, v8), a4];
}

@end