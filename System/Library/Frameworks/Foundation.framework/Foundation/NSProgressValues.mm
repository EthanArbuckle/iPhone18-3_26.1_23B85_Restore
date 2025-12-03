@interface NSProgressValues
+ (id)decodableClasses;
- (BOOL)isFinished;
- (BOOL)isIndeterminate;
- (NSProgressValues)init;
- (NSProgressValues)initWithCoder:(id)coder;
- (_NSProgressFraction)overallFraction;
- (double)fractionCompleted;
- (id)_indentedDescription:(unint64_t)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSProgressValues

- (NSProgressValues)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSProgressValues;
  result = [(NSProgressValues *)&v3 init];
  if (result)
  {
    result->_isCancellable = 1;
    *&result->_selfFraction.overflowed = 0u;
    *&result->_childFraction.total = 0u;
    *&result->_selfFraction.completed = 0u;
    result->_childFraction.total = 1;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSProgressValues;
  [(NSProgressValues *)&v3 dealloc];
}

- (_NSProgressFraction)overallFraction
{
  *&retstr->overflowed = 0;
  *retstr = self->_selfFraction;
  return _NSProgressFractionAddFraction(retstr, &self->_childFraction.completed);
}

- (double)fractionCompleted
{
  if (self)
  {
    [(NSProgressValues *)self overallFraction];
  }

  return 0.0;
}

uint64_t __36__NSProgressValues_decodableClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  qword_1ED43F0B8 = result;
  return result;
}

+ (id)decodableClasses
{
  if (qword_1ED43F0B0 != -1)
  {
    dispatch_once(&qword_1ED43F0B0, &__block_literal_global_176);
  }

  return qword_1ED43F0B8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = [(NSMutableDictionary *)self->_userInfo mutableCopy];
  v5 = *&self->_selfFraction.overflowed;
  *(v4 + 16) = *&self->_selfFraction.completed;
  *(v4 + 32) = v5;
  v6 = *&self->_childFraction.completed;
  *(v4 + 56) = *&self->_childFraction.overflowed;
  *(v4 + 40) = v6;
  *(v4 + 72) = [(NSString *)self->_localizedDescription copy];
  *(v4 + 80) = [(NSString *)self->_localizedAdditionalDescription copy];
  *(v4 + 104) = self->_isCancellable;
  *(v4 + 105) = self->_isPausable;
  *(v4 + 106) = self->_isCancelled;
  *(v4 + 107) = self->_isPaused;
  *(v4 + 88) = [(NSString *)self->_kind mutableCopy];
  *(v4 + 109) = self->_isPrioritizable;
  return v4;
}

- (id)_indentedDescription:(unint64_t)description
{
  v9[5] = *MEMORY[0x1E69E9840];
  v5 = +[(NSString *)NSMutableString];
  for (i = +[(NSString *)NSMutableString]; description; --description)
  {
    [(NSString *)i appendString:@"  "];
  }

  [(NSString *)v5 appendFormat:@"%@self: %@", i, _NSProgressFractionDescription(&self->_selfFraction)];
  [(NSString *)v5 appendFormat:@"\n%@children: %@", i, _NSProgressFractionDescription(&self->_childFraction)];
  [(NSString *)v5 appendFormat:@"\n%@localizedDescription: %@", i, self->_localizedDescription];
  [(NSString *)v5 appendFormat:@"\n%@localizedAdditionalDescription: %@", i, self->_localizedAdditionalDescription];
  [(NSString *)v5 appendFormat:@"\n%@isCancellable: %@", i, [NSNumber numberWithBool:self->_isCancellable]];
  [(NSString *)v5 appendFormat:@"\n%@isPausable: %@", i, [NSNumber numberWithBool:self->_isPausable]];
  [(NSString *)v5 appendFormat:@"\n%@isCancelled: %@", i, [NSNumber numberWithBool:self->_isCancelled]];
  [(NSString *)v5 appendFormat:@"\n%@isPaused: %@", i, [NSNumber numberWithBool:self->_isPaused]];
  [(NSString *)v5 appendFormat:@"\n%@isPrioritizable: %@", i, [NSNumber numberWithBool:self->_isPrioritizable]];
  [(NSString *)v5 appendFormat:@"\n%@kind: %@", i, self->_kind];
  [(NSString *)v5 appendFormat:@"\n%@userInfo: {", i];
  userInfo = self->_userInfo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__NSProgressValues__indentedDescription___block_invoke;
  v9[3] = &unk_1E69F3270;
  v9[4] = v5;
  [(NSMutableDictionary *)userInfo enumerateKeysAndObjectsUsingBlock:v9];
  [(NSString *)v5 deleteCharactersInRange:[(NSString *)v5 length]- 2, 2];
  [(NSString *)v5 appendFormat:@"}"];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9[6] = *MEMORY[0x1E69E9840];
  v5 = objc_lookUpClass("NSImage");
  userInfo = self->_userInfo;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)userInfo mutableCopy];
    v8 = self->_userInfo;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__NSProgressValues_encodeWithCoder___block_invoke;
    v9[3] = &unk_1E69F7640;
    v9[4] = v5;
    v9[5] = v7;
    [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = userInfo;
  }

  [coder encodeObject:v7 forKey:@"userInfo"];
  [coder encodeInt64:self->_selfFraction.completed forKey:@"selfFraction.completed"];
  [coder encodeInt64:self->_selfFraction.total forKey:@"selfFraction.total"];
  [coder encodeBool:self->_selfFraction.overflowed forKey:@"selfFraction.overflowed"];
  [coder encodeInt64:self->_childFraction.completed forKey:@"childFraction.completed"];
  [coder encodeInt64:self->_childFraction.total forKey:@"childFraction.total"];
  [coder encodeBool:self->_childFraction.overflowed forKey:@"childFraction.overflowed"];
  [coder encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coder encodeObject:self->_localizedAdditionalDescription forKey:@"localizedAdditionalDescription"];
  [coder encodeBool:self->_isCancellable forKey:@"cancellable"];
  [coder encodeBool:self->_isPausable forKey:@"pausable"];
  [coder encodeBool:self->_isCancelled forKey:@"cancelled"];
  [coder encodeBool:self->_isPaused forKey:@"paused"];
  [coder encodeObject:self->_kind forKey:@"kind"];
  [coder encodeBool:self->_isPrioritizable forKey:@"prioritizable"];
}

uint64_t __36__NSProgressValues_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    [*(a1 + 40) removeObjectForKey:a2];
    result = [a3 performSelector:sel_TIFFRepresentation];
    if (result)
    {
      v7 = result;
      v8 = *(a1 + 40);
      v9 = [a2 stringByAppendingString:@".data"];

      return [v8 setObject:v7 forKey:v9];
    }
  }

  return result;
}

- (NSProgressValues)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSProgressValues;
  v4 = [(NSProgressValues *)&v6 init];
  if (v4)
  {
    v4->_userInfo = [coder decodeObjectOfClasses:objc_msgSend(objc_msgSend(coder forKey:{"allowedClasses"), "setByAddingObjectsFromSet:", objc_msgSend(objc_opt_class(), "decodableClasses")), @"userInfo"}];
    v4->_selfFraction.completed = [coder decodeInt64ForKey:@"selfFraction.completed"];
    v4->_selfFraction.total = [coder decodeInt64ForKey:@"selfFraction.total"];
    v4->_selfFraction.overflowed = [coder decodeInt64ForKey:@"selfFraction.overflowed"] != 0;
    v4->_childFraction.completed = [coder decodeInt64ForKey:@"childFraction.completed"];
    v4->_childFraction.total = [coder decodeInt64ForKey:@"childFraction.total"];
    v4->_childFraction.overflowed = [coder decodeInt64ForKey:@"childFraction.overflowed"] != 0;
    v4->_localizedDescription = [coder decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    v4->_localizedAdditionalDescription = [coder decodeObjectOfClass:objc_opt_class() forKey:@"localizedAdditionalDescription"];
    v4->_isCancellable = [coder decodeBoolForKey:@"cancellable"];
    v4->_isPausable = [coder decodeBoolForKey:@"pausable"];
    v4->_isCancelled = [coder decodeBoolForKey:@"cancelled"];
    v4->_isPaused = [coder decodeBoolForKey:@"paused"];
    v4->_kind = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    v4->_isPrioritizable = [coder decodeBoolForKey:@"prioritizable"];
  }

  return v4;
}

- (BOOL)isIndeterminate
{
  completed = self->_selfFraction.completed;
  if (completed < 0)
  {
    return 1;
  }

  total = self->_selfFraction.total;
  v4 = (total | completed) == 0;
  return total < 0 || v4;
}

- (BOOL)isFinished
{
  completed = self->_selfFraction.completed;
  total = self->_selfFraction.total;
  v5 = completed > 0 && total == 0;
  return completed >= 1 && completed >= total && total > 0 || v5;
}

@end