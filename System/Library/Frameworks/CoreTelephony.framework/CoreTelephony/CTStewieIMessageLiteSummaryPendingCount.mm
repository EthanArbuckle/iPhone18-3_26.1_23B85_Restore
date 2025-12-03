@interface CTStewieIMessageLiteSummaryPendingCount
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieIMessageLiteSummaryPendingCount)initWithCoder:(id)coder;
- (CTStewieIMessageLiteSummaryPendingCount)initWithOtherShortHandle:(id)handle pendingCount:(int64_t)count error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieIMessageLiteSummaryPendingCount

- (CTStewieIMessageLiteSummaryPendingCount)initWithOtherShortHandle:(id)handle pendingCount:(int64_t)count error:(id *)p_isa
{
  v18[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  {
    v16.receiver = self;
    v16.super_class = CTStewieIMessageLiteSummaryPendingCount;
    v11 = [(CTStewieIMessageLiteSummaryPendingCount *)&v16 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_otherShortHandle, handle);
      p_isa[2] = count;
      self = p_isa;
      p_isa = &self->super.isa;
    }

    else
    {
      self = 0;
    }
  }

  else if (p_isa)
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Invalid otherShortHandle";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *p_isa = [v12 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v13];

    p_isa = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  otherShortHandle = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
  otherShortHandle2 = [otherCopy otherShortHandle];
  if (otherShortHandle != otherShortHandle2)
  {
    otherShortHandle3 = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
    otherShortHandle4 = [otherCopy otherShortHandle];
    if (![otherShortHandle3 isEqual:otherShortHandle4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  pendingCount = [(CTStewieIMessageLiteSummaryPendingCount *)self pendingCount];
  v9 = pendingCount == [otherCopy pendingCount];
  if (otherShortHandle != otherShortHandle2)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteSummaryPendingCount *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  otherShortHandle = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
  v7 = [otherShortHandle copyWithZone:zone];
  [v5 setOtherShortHandle:v7];

  [v5 setPendingCount:{-[CTStewieIMessageLiteSummaryPendingCount pendingCount](self, "pendingCount")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  otherShortHandle = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
  [coderCopy encodeObject:otherShortHandle forKey:@"otherShortHandle"];

  [coderCopy encodeInteger:-[CTStewieIMessageLiteSummaryPendingCount pendingCount](self forKey:{"pendingCount"), @"pendingCount"}];
}

- (CTStewieIMessageLiteSummaryPendingCount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherShortHandle"];
  v6 = -[CTStewieIMessageLiteSummaryPendingCount initWithOtherShortHandle:pendingCount:error:](self, "initWithOtherShortHandle:pendingCount:error:", v5, [coderCopy decodeIntegerForKey:@"pendingCount"], 0);

  return v6;
}

@end