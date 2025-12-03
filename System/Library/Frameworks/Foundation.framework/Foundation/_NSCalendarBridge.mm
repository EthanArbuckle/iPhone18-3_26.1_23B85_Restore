@interface _NSCalendarBridge
- (_NSCalendarBridge)initWithCalendarIdentifier:(id)identifier;
- (id)components:(unint64_t)components fromDate:(id)date;
- (id)componentsInTimeZone:(id)zone fromDate:(id)date;
- (id)dateFromComponents:(id)components;
- (void)_enumerateDatesStartingAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateDatesStartingAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options usingBlock:(id)block;
@end

@implementation _NSCalendarBridge

- (_NSCalendarBridge)initWithCalendarIdentifier:(id)identifier
{
  if (!_NSIsNSString())
  {
    return 0;
  }

  return [(_NSCalendarBridge *)self initWithCheckedCalendarIdentifier:identifier];
}

- (void)enumerateDatesStartingAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options usingBlock:(id)block
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (date)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91___NSCalendarBridge_enumerateDatesStartingAfterDate_matchingComponents_options_usingBlock___block_invoke;
    v6[3] = &unk_1E69F2688;
    v6[4] = block;
    [(_NSCalendarBridge *)self _enumerateDatesStartingAfterDate:date matchingComponents:components options:options usingBlock:v6];
  }
}

- (void)_enumerateDatesStartingAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options usingBlock:(id)block
{
  v8 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v8);
}

- (id)componentsInTimeZone:(id)zone fromDate:(id)date
{
  if (!zone)
  {
    zone = [(_NSCalendarBridge *)self timeZone];
    if (!zone)
    {
      zone = [MEMORY[0x1E695DFE8] systemTimeZone];
    }
  }

  return [(_NSCalendarBridge *)self _componentsInTimeZone:zone fromDate:date];
}

- (id)components:(unint64_t)components fromDate:(id)date
{
  if (date)
  {
    return [(_NSCalendarBridge *)self _components:components fromDate:?];
  }

  else
  {
    return 0;
  }
}

- (id)dateFromComponents:(id)components
{
  if (components)
  {
    return [(_NSCalendarBridge *)self _dateFromComponents:?];
  }

  else
  {
    return 0;
  }
}

@end