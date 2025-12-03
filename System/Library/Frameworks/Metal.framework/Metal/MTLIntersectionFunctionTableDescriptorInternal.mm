@interface MTLIntersectionFunctionTableDescriptorInternal
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
@end

@implementation MTLIntersectionFunctionTableDescriptorInternal

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLIntersectionFunctionTableDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLIntersectionFunctionTableDescriptorInternal;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 1) = self->_private.functionCount;
    *(result + 16) = self->_private.forceResourceIndex;
    *(result + 3) = self->_private.resourceIndex;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = -self->_private.forceResourceIndex;
  v4[0] = self->_private.functionCount;
  v4[1] = v2;
  v4[2] = self->_private.resourceIndex;
  return _MTLHashState(v4, 0x18uLL);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && self->_private.functionCount == *(equal + 1) && self->_private.forceResourceIndex == *(equal + 16) && self->_private.resourceIndex == *(equal + 3);
}

- (id)formattedDescription:(unint64_t)description
{
  v12[9] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLIntersectionFunctionTableDescriptorInternal;
  v6 = [(MTLIntersectionFunctionTableDescriptorInternal *)&v11 description];
  v12[0] = v4;
  v12[1] = @"functionCount =";
  p_private = &self->_private;
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->functionCount];
  v12[3] = v4;
  v8 = @"YES";
  if (!p_private->forceResourceIndex)
  {
    v8 = @"NO";
  }

  v12[4] = @"forceResourceIndex =";
  v12[5] = v8;
  v12[6] = v4;
  v12[7] = @"resourceIndex =";
  v12[8] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:p_private->resourceIndex];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 9), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end