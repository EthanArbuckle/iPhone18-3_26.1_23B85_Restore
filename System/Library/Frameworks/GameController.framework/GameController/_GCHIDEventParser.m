@interface _GCHIDEventParser
- (_GCHIDEventParser)init;
- (_GCHIDEventParser)initWithCoder:(id)a3;
- (void)parse:(__IOHIDEvent *)a3 into:(id)a4;
@end

@implementation _GCHIDEventParser

- (_GCHIDEventParser)init
{
  v6.receiver = self;
  v6.super_class = _GCHIDEventParser;
  v2 = [(_GCHIDEventParser *)&v6 init];
  v3 = objc_opt_new();
  childEventParsers = v2->_childEventParsers;
  v2->_childEventParsers = v3;

  return v2;
}

- (_GCHIDEventParser)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = _GCHIDEventParser;
  v3 = a3;
  v4 = [(_GCHIDEventParser *)&v11 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v11.receiver, v11.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"childEventParsers"];

  childEventParsers = v4->_childEventParsers;
  v4->_childEventParsers = v8;

  return v4;
}

- (void)parse:(__IOHIDEvent *)a3 into:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = IOHIDEventGetChildren();
  v7 = [(_GCHIDEventParser *)self childEventParsers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ([v6 count])
        {
          v13 = 0;
          do
          {
            v14 = [v6 objectAtIndexedSubscript:v13];
            [v12 parse:v14 into:v5];

            ++v13;
          }

          while (v13 < [v6 count]);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end