@interface ASTAction
- (ASTAction)init;
- (ASTAction)initWithAction:(id)a3 data:(id)a4;
- (ASTAction)initWithCoder:(id)a3;
- (NSDictionary)dictionaryValue;
- (id)acceptableDecoderClasses;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setFinished:(BOOL)a3;
- (void)setProgress:(unint64_t)a3;
@end

@implementation ASTAction

- (ASTAction)init
{
  v3 = [MEMORY[0x277CBEAC0] dictionary];
  v4 = [(ASTAction *)self initWithAction:&stru_2852CD800 data:v3];

  return v4;
}

- (ASTAction)initWithAction:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = ASTAction;
  v9 = [(ASTAction *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, a3);
    *&v10->_finished = 0;
    v10->_progress = 0;
    v10->_resultCode = 2;
    v11 = [MEMORY[0x277CBEAC0] dictionary];
    results = v10->_results;
    v10->_results = v11;

    v13 = [v8 objectForKeyedSubscript:@"id"];

    if (v13)
    {
      v14 = [v8 objectForKeyedSubscript:@"id"];
      identifier = v10->_identifier;
      v10->_identifier = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CCAD78] UUID];
      v17 = [v16 UUIDString];
      v18 = v10->_identifier;
      v10->_identifier = v17;

      v10->_generatedId = 1;
    }

    v19 = [v8 objectForKeyedSubscript:@"parameters"];

    if (v19)
    {
      v20 = [v8 objectForKeyedSubscript:@"parameters"];
      parameters = v10->_parameters;
      v10->_parameters = v20;
    }
  }

  return v10;
}

- (void)setProgress:(unint64_t)a3
{
  v3 = 100;
  if (a3 < 0x64)
  {
    v3 = a3;
  }

  self->_progress = v3;
}

- (void)setFinished:(BOOL)a3
{
  if (a3)
  {
    self->_finished = 1;
  }
}

- (NSDictionary)dictionaryValue
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(ASTAction *)self action];
  [v3 setObject:v4 forKeyedSubscript:@"action"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ASTAction progress](self, "progress")}];
  [v3 setObject:v5 forKeyedSubscript:@"progress"];

  if (![(ASTAction *)self generatedId])
  {
    v6 = [(ASTAction *)self identifier];
    [v3 setObject:v6 forKeyedSubscript:@"id"];
  }

  if ([(ASTAction *)self isFinished])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTAction resultCode](self, "resultCode")}];
    [v3 setObject:v7 forKeyedSubscript:@"resultCode"];

    v8 = [(ASTAction *)self results];
    [v3 setObject:v8 forKeyedSubscript:@"resultPayload"];
  }

  v9 = [v3 copy];

  return v9;
}

- (ASTAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTAction *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [(ASTAction *)v5 acceptableDecoderClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v11;

    v5->_progress = [v4 decodeIntegerForKey:@"progress"];
    v5->_resultCode = [v4 decodeIntegerForKey:@"resultCode"];
    v13 = [(ASTAction *)v5 acceptableDecoderClasses];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"resultPayload"];
    results = v5->_results;
    v5->_results = v14;

    v5->_finished = [v4 decodeBoolForKey:@"finished"];
    v5->_generatedId = [v4 decodeBoolForKey:@"generatedId"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ASTAction *)self action];
  [v8 encodeObject:v4 forKey:@"action"];

  v5 = [(ASTAction *)self identifier];
  [v8 encodeObject:v5 forKey:@"id"];

  v6 = [(ASTAction *)self parameters];
  [v8 encodeObject:v6 forKey:@"parameters"];

  [v8 encodeInteger:-[ASTAction progress](self forKey:{"progress"), @"progress"}];
  [v8 encodeInteger:-[ASTAction resultCode](self forKey:{"resultCode"), @"resultCode"}];
  v7 = [(ASTAction *)self results];
  [v8 encodeObject:v7 forKey:@"resultPayload"];

  [v8 encodeBool:-[ASTAction isFinished](self forKey:{"isFinished"), @"finished"}];
  [v8 encodeBool:-[ASTAction generatedId](self forKey:{"generatedId"), @"generatedId"}];
}

- (id)acceptableDecoderClasses
{
  if (acceptableDecoderClasses_onceToken != -1)
  {
    [ASTAction acceptableDecoderClasses];
  }

  v3 = acceptableDecoderClasses_singleton;

  return v3;
}

uint64_t __37__ASTAction_acceptableDecoderClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  acceptableDecoderClasses_singleton = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_action copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSDictionary *)self->_parameters copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 16) = self->_progress;
  *(v5 + 48) = self->_resultCode;
  v12 = [(NSDictionary *)self->_results copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  *(v5 + 8) = self->_finished;
  *(v5 + 9) = self->_generatedId;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASTAction *)self action];
  v7 = [(ASTAction *)self identifier];
  v8 = [(ASTAction *)self parameters];
  v9 = [(ASTAction *)self progress];
  v10 = [(ASTAction *)self resultCode];
  v11 = [(ASTAction *)self results];
  v12 = [v3 stringWithFormat:@"<%@: %p action = %@, identifier = %@, parameters = %@, progress = %lu, resultCode = %ld, results = %@, finished = %d, generatedId = %d>", v5, self, v6, v7, v8, v9, v10, v11, -[ASTAction isFinished](self, "isFinished"), -[ASTAction generatedId](self, "generatedId")];;

  return v12;
}

@end