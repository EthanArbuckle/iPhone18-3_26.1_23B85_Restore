@interface CAStateTransition
+ (void)CAMLParserStartElement:(id)element;
- (CAStateTransition)init;
- (CAStateTransition)initWithCoder:(id)coder;
- (double)duration;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAStateTransition

- (CAStateTransition)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = CAStateTransition;
  v2 = [(CAStateTransition *)&v4 init];
  if (v2)
  {
    v2->_fromState = @"*";
    v2->_toState = @"*";
  }

  return v2;
}

- (double)duration
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  elements = self->_elements;
  v3 = [(NSArray *)elements countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = *v24;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(elements);
      }

      animation = [*(*(&v23 + 1) + 8 * i) animation];
      if (animation)
      {
        v9 = animation;
        [animation beginTime];
        v11 = v10;
        [v9 duration];
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          [v9 speed];
          if (v13 == 0.0)
          {
            v12 = INFINITY;
          }

          else
          {
            v14 = fabsf(v13);
            v15 = 1.0;
            if (v14 != 1.0)
            {
              v15 = 1.0 / v14;
            }

            [v9 repeatDuration];
            if (v16 == 0.0)
            {
              [v9 duration];
              v18 = v17 * v15;
              if ([v9 autoreverses])
              {
                v18 = v18 + v18;
              }

              [v9 repeatCount];
              if (v19 <= 0.0)
              {
                v12 = v18;
              }

              else
              {
                v12 = v18 * v19;
              }
            }

            else
            {
              v12 = v16 * v15;
            }
          }
        }

        v20 = v12 + v11;
        if (v20 > v6)
        {
          v6 = v20;
        }
      }
    }

    v4 = [(NSArray *)elements countByEnumeratingWithState:&v23 objects:v22 count:16];
  }

  while (v4);
  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateTransition;
  [(CAStateTransition *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CAStateTransition);
  [(CAStateTransition *)v4 setFromState:self->_fromState];
  [(CAStateTransition *)v4 setToState:self->_toState];
  [(CAStateTransition *)v4 setElements:self->_elements];
  return v4;
}

- (CAStateTransition)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateTransition;
  v4 = [(CAStateTransition *)&v6 init];
  if (v4)
  {
    v4->_fromState = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"fromState", "copy"}];
    v4->_toState = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"toState", "copy"}];
    v4->_elements = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"elements", "copy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  fromState = self->_fromState;
  if (fromState)
  {
    [coder encodeObject:fromState forKey:@"fromState"];
  }

  toState = self->_toState;
  if (toState)
  {
    [coder encodeObject:toState forKey:@"toState"];
  }

  if (self->_elements)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (id)CAMLTypeForKey:(id)key
{
  v4 = [CAStateTransition CAMLTypeForKey:]::dict;
  if (![CAStateTransition CAMLTypeForKey:]::dict)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"fromState", @"string", @"toState", @"NSArray", @"elements", 0}];
    [CAStateTransition CAMLTypeForKey:]::dict = v4;
  }

  return [v4 objectForKey:key];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  fromState = self->_fromState;
  if (fromState)
  {
    [writer setElementAttribute:fromState forKey:@"fromState"];
  }

  toState = self->_toState;
  if (toState)
  {
    [writer setElementAttribute:toState forKey:@"toState"];
  }

  if (self->_elements)
  {
    [writer beginPropertyElement:@"elements"];
    [writer encodeObject:self->_elements];

    [writer endElement];
  }
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = objc_alloc_init(self);
  [element setElementValue:v4];
}

@end