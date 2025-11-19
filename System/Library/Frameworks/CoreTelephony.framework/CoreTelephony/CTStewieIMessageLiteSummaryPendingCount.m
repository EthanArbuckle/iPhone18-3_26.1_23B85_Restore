@interface CTStewieIMessageLiteSummaryPendingCount
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieIMessageLiteSummaryPendingCount)initWithCoder:(id)a3;
- (CTStewieIMessageLiteSummaryPendingCount)initWithOtherShortHandle:(id)a3 pendingCount:(int64_t)a4 error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieIMessageLiteSummaryPendingCount

- (CTStewieIMessageLiteSummaryPendingCount)initWithOtherShortHandle:(id)a3 pendingCount:(int64_t)a4 error:(id *)p_isa
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  {
    v16.receiver = self;
    v16.super_class = CTStewieIMessageLiteSummaryPendingCount;
    v11 = [(CTStewieIMessageLiteSummaryPendingCount *)&v16 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_otherShortHandle, a3);
      p_isa[2] = a4;
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

- (BOOL)isEqualToOther:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
  v8 = [v6 otherShortHandle];
  if (v7 != v8)
  {
    v3 = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
    v4 = [v6 otherShortHandle];
    if (![v3 isEqual:v4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v10 = [(CTStewieIMessageLiteSummaryPendingCount *)self pendingCount];
  v9 = v10 == [v6 pendingCount];
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteSummaryPendingCount *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
  v7 = [v6 copyWithZone:a3];
  [v5 setOtherShortHandle:v7];

  [v5 setPendingCount:{-[CTStewieIMessageLiteSummaryPendingCount pendingCount](self, "pendingCount")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTStewieIMessageLiteSummaryPendingCount *)self otherShortHandle];
  [v5 encodeObject:v4 forKey:@"otherShortHandle"];

  [v5 encodeInteger:-[CTStewieIMessageLiteSummaryPendingCount pendingCount](self forKey:{"pendingCount"), @"pendingCount"}];
}

- (CTStewieIMessageLiteSummaryPendingCount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherShortHandle"];
  v6 = -[CTStewieIMessageLiteSummaryPendingCount initWithOtherShortHandle:pendingCount:error:](self, "initWithOtherShortHandle:pendingCount:error:", v5, [v4 decodeIntegerForKey:@"pendingCount"], 0);

  return v6;
}

@end