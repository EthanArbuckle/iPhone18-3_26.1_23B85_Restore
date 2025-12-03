@interface _CLVLLocalizationDebugInfo
- (_CLVLLocalizationDebugInfo)initWithCoder:(id)coder;
- (_CLVLLocalizationDebugInfo)initWithVLLocalizationDebugInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
@end

@implementation _CLVLLocalizationDebugInfo

- (_CLVLLocalizationDebugInfo)initWithVLLocalizationDebugInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = _CLVLLocalizationDebugInfo;
  result = [(_CLVLLocalizationDebugInfo *)&v5 init];
  if (result)
  {
    if (info)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(_CLVLLocalizationMaps488Details *)self->_maps488Details copyWithZone:zone];
  return v5;
}

- (_CLVLLocalizationDebugInfo)initWithCoder:(id)coder
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

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = [indent stringByAppendingString:@"\t"];
  v8 = [endIndent stringByAppendingString:@"\t"];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<_CLVLLocalizationDebugInfo: %p> {\n%@.maps488Details = %@\n%@}", self, indent, -[_CLVLLocalizationMaps488Details descriptionWithMemberIndent:endIndent:](-[_CLVLLocalizationDebugInfo maps488Details](self, "maps488Details"), "descriptionWithMemberIndent:endIndent:", v7, v8), endIndent];
}

@end