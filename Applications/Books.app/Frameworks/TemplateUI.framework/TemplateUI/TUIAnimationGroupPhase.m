@interface TUIAnimationGroupPhase
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TUIAnimationGroupPhase

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TUIAnimationGroupPhase allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSArray *)self->_animations copy];
    animations = v4->_animations;
    v4->_animations = v5;

    v4->_delay = self->_delay;
    v4->_duration = self->_duration;
    v4->_options = self->_options;
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:@"<"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 addObject:v5];

  v6 = [NSString stringWithFormat:@" %p", self];
  [v3 addObject:v6];

  v7 = [NSString stringWithFormat:@" delay: %g", *&self->_delay];
  [v3 addObject:v7];

  v8 = [NSString stringWithFormat:@" duration: %g", *&self->_duration];
  [v3 addObject:v8];

  v9 = [NSNumber numberWithUnsignedInteger:self->_options];
  v10 = [NSString stringWithFormat:@" options: %@", v9];
  [v3 addObject:v10];

  [v3 addObject:@" animations: { "];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_animations;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (v14)
        {
          [v3 addObject:{@", "}];
        }

        [v3 addObject:@"<"];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        [v3 addObject:v19];

        v20 = [NSString stringWithFormat:@" %p>", v17];
        [v3 addObject:v20];

        v14 = 1;
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);

    [v3 addObject:@" "];
  }

  else
  {
  }

  [v3 addObject:@"}>"];
  v21 = [v3 componentsJoinedByString:&stru_264550];

  return v21;
}

@end