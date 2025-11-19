@interface CTStewieIMessageLiteSummaryMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieIMessageLiteSummaryMessage)initWithCoder:(id)a3;
- (CTStewieIMessageLiteSummaryMessage)initWithPendingIMessageLiteTotalCount:(int64_t)a3 pendingCounts:(id)a4 error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieIMessageLiteSummaryMessage

- (CTStewieIMessageLiteSummaryMessage)initWithPendingIMessageLiteTotalCount:(int64_t)a3 pendingCounts:(id)a4 error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = CTStewieIMessageLiteSummaryMessage;
    v10 = [(CTStewieIMessageLiteSummaryMessage *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      v10->_pendingIMessageLiteTotalCount = a3;
      objc_storeStrong(&v10->_pendingCounts, a4);
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
  v4 = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
  [v3 appendFormat:@", pendingCounts=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieIMessageLiteSummaryMessage *)self pendingIMessageLiteTotalCount];
  if (v5 == [v4 pendingIMessageLiteTotalCount])
  {
    v6 = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
    v7 = [v4 pendingCounts];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
      v9 = [v4 pendingCounts];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteSummaryMessage *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setPendingIMessageLiteTotalCount:{-[CTStewieIMessageLiteSummaryMessage pendingIMessageLiteTotalCount](self, "pendingIMessageLiteTotalCount")}];
  v6 = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
  v7 = [v6 copyWithZone:a3];
  [v5 setPendingCounts:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[CTStewieIMessageLiteSummaryMessage pendingIMessageLiteTotalCount](self forKey:{"pendingIMessageLiteTotalCount"), @"pendingIMessageLiteTotalCount"}];
  v4 = [(CTStewieIMessageLiteSummaryMessage *)self pendingCounts];
  [v5 encodeObject:v4 forKey:@"pendingCounts"];
}

- (CTStewieIMessageLiteSummaryMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"pendingIMessageLiteTotalCount"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"pendingCounts"];
  v10 = [(CTStewieIMessageLiteSummaryMessage *)self initWithPendingIMessageLiteTotalCount:v5 pendingCounts:v9 error:0];

  return v10;
}

@end