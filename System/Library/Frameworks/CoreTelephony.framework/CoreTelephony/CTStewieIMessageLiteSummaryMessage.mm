@interface CTStewieIMessageLiteSummaryMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieIMessageLiteSummaryMessage)initWithCoder:(id)coder;
- (CTStewieIMessageLiteSummaryMessage)initWithPendingIMessageLiteTotalCount:(int64_t)count pendingCounts:(id)counts error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieIMessageLiteSummaryMessage

- (CTStewieIMessageLiteSummaryMessage)initWithPendingIMessageLiteTotalCount:(int64_t)count pendingCounts:(id)counts error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  if (countsCopy)
  {
    v15.receiver = self;
    v15.super_class = CTStewieIMessageLiteSummaryMessage;
    v10 = [(CTStewieIMessageLiteSummaryMessage *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      v10->_pendingIMessageLiteTotalCount = count;
      objc_storeStrong(&v10->_pendingCounts, counts);
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
    v11 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Pending counts are missing";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *p_isa = [v11 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];

    p_isa = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", pendingIMessageLiteTotalCount=%ld", -[CTStewieIMessageLiteSummaryMessage pendingIMessageLiteTotalCount](self, "pendingIMessageLiteTotalCount")];
  pendingCounts = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
  [v3 appendFormat:@", pendingCounts=%@", pendingCounts];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  pendingIMessageLiteTotalCount = [(CTStewieIMessageLiteSummaryMessage *)self pendingIMessageLiteTotalCount];
  if (pendingIMessageLiteTotalCount == [otherCopy pendingIMessageLiteTotalCount])
  {
    pendingCounts = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
    pendingCounts2 = [otherCopy pendingCounts];
    if (pendingCounts == pendingCounts2)
    {
      v10 = 1;
    }

    else
    {
      pendingCounts3 = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
      pendingCounts4 = [otherCopy pendingCounts];
      v10 = [pendingCounts3 isEqual:pendingCounts4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteSummaryMessage *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setPendingIMessageLiteTotalCount:{-[CTStewieIMessageLiteSummaryMessage pendingIMessageLiteTotalCount](self, "pendingIMessageLiteTotalCount")}];
  pendingCounts = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
  v7 = [pendingCounts copyWithZone:zone];
  [v5 setPendingCounts:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieIMessageLiteSummaryMessage pendingIMessageLiteTotalCount](self forKey:{"pendingIMessageLiteTotalCount"), @"pendingIMessageLiteTotalCount"}];
  pendingCounts = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
  [coderCopy encodeObject:pendingCounts forKey:@"pendingCounts"];
}

- (CTStewieIMessageLiteSummaryMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"pendingIMessageLiteTotalCount"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"pendingCounts"];
  v10 = [(CTStewieIMessageLiteSummaryMessage *)self initWithPendingIMessageLiteTotalCount:v5 pendingCounts:v9 error:0];

  return v10;
}

@end