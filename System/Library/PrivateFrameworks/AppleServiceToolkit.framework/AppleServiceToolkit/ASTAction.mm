@interface ASTAction
- (ASTAction)init;
- (ASTAction)initWithAction:(id)action data:(id)data;
- (ASTAction)initWithCoder:(id)coder;
- (NSDictionary)dictionaryValue;
- (id)acceptableDecoderClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setFinished:(BOOL)finished;
- (void)setProgress:(unint64_t)progress;
@end

@implementation ASTAction

- (ASTAction)init
{
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v4 = [(ASTAction *)self initWithAction:&stru_2852CD800 data:dictionary];

  return v4;
}

- (ASTAction)initWithAction:(id)action data:(id)data
{
  actionCopy = action;
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = ASTAction;
  v9 = [(ASTAction *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, action);
    *&v10->_finished = 0;
    v10->_progress = 0;
    v10->_resultCode = 2;
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    results = v10->_results;
    v10->_results = dictionary;

    v13 = [dataCopy objectForKeyedSubscript:@"id"];

    if (v13)
    {
      v14 = [dataCopy objectForKeyedSubscript:@"id"];
      identifier = v10->_identifier;
      v10->_identifier = v14;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v18 = v10->_identifier;
      v10->_identifier = uUIDString;

      v10->_generatedId = 1;
    }

    v19 = [dataCopy objectForKeyedSubscript:@"parameters"];

    if (v19)
    {
      v20 = [dataCopy objectForKeyedSubscript:@"parameters"];
      parameters = v10->_parameters;
      v10->_parameters = v20;
    }
  }

  return v10;
}

- (void)setProgress:(unint64_t)progress
{
  progressCopy = 100;
  if (progress < 0x64)
  {
    progressCopy = progress;
  }

  self->_progress = progressCopy;
}

- (void)setFinished:(BOOL)finished
{
  if (finished)
  {
    self->_finished = 1;
  }
}

- (NSDictionary)dictionaryValue
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  action = [(ASTAction *)self action];
  [dictionary setObject:action forKeyedSubscript:@"action"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ASTAction progress](self, "progress")}];
  [dictionary setObject:v5 forKeyedSubscript:@"progress"];

  if (![(ASTAction *)self generatedId])
  {
    identifier = [(ASTAction *)self identifier];
    [dictionary setObject:identifier forKeyedSubscript:@"id"];
  }

  if ([(ASTAction *)self isFinished])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTAction resultCode](self, "resultCode")}];
    [dictionary setObject:v7 forKeyedSubscript:@"resultCode"];

    results = [(ASTAction *)self results];
    [dictionary setObject:results forKeyedSubscript:@"resultPayload"];
  }

  v9 = [dictionary copy];

  return v9;
}

- (ASTAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTAction *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    acceptableDecoderClasses = [(ASTAction *)v5 acceptableDecoderClasses];
    v11 = [coderCopy decodeObjectOfClasses:acceptableDecoderClasses forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v11;

    v5->_progress = [coderCopy decodeIntegerForKey:@"progress"];
    v5->_resultCode = [coderCopy decodeIntegerForKey:@"resultCode"];
    acceptableDecoderClasses2 = [(ASTAction *)v5 acceptableDecoderClasses];
    v14 = [coderCopy decodeObjectOfClasses:acceptableDecoderClasses2 forKey:@"resultPayload"];
    results = v5->_results;
    v5->_results = v14;

    v5->_finished = [coderCopy decodeBoolForKey:@"finished"];
    v5->_generatedId = [coderCopy decodeBoolForKey:@"generatedId"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(ASTAction *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  identifier = [(ASTAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"id"];

  parameters = [(ASTAction *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  [coderCopy encodeInteger:-[ASTAction progress](self forKey:{"progress"), @"progress"}];
  [coderCopy encodeInteger:-[ASTAction resultCode](self forKey:{"resultCode"), @"resultCode"}];
  results = [(ASTAction *)self results];
  [coderCopy encodeObject:results forKey:@"resultPayload"];

  [coderCopy encodeBool:-[ASTAction isFinished](self forKey:{"isFinished"), @"finished"}];
  [coderCopy encodeBool:-[ASTAction generatedId](self forKey:{"generatedId"), @"generatedId"}];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_action copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSDictionary *)self->_parameters copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 16) = self->_progress;
  *(v5 + 48) = self->_resultCode;
  v12 = [(NSDictionary *)self->_results copyWithZone:zone];
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
  action = [(ASTAction *)self action];
  identifier = [(ASTAction *)self identifier];
  parameters = [(ASTAction *)self parameters];
  progress = [(ASTAction *)self progress];
  resultCode = [(ASTAction *)self resultCode];
  results = [(ASTAction *)self results];
  v12 = [v3 stringWithFormat:@"<%@: %p action = %@, identifier = %@, parameters = %@, progress = %lu, resultCode = %ld, results = %@, finished = %d, generatedId = %d>", v5, self, action, identifier, parameters, progress, resultCode, results, -[ASTAction isFinished](self, "isFinished"), -[ASTAction generatedId](self, "generatedId")];;

  return v12;
}

@end