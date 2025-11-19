@interface TUIAnimationRenderModel
- ($2940F3BBF0C500EC413214967FDB6F62)timing;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setTiming:(id *)a3;
@end

@implementation TUIAnimationRenderModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TUIAnimationRenderModel allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->_delay = self->_delay;
    v4->_duration = self->_duration;
    v4->_options = self->_options;
    v6 = *&self->_timing.mass;
    v7 = *&self->_timing.damping;
    v4->_timing.initialVelocity.dy = self->_timing.initialVelocity.dy;
    *&v4->_timing.damping = v7;
    *&v4->_timing.mass = v6;
    v8 = [(NSArray *)self->_models copy];
    models = v5->_models;
    v5->_models = v8;

    v10 = [(TUIAnimationRenderModelStep *)self->_from copy];
    from = v5->_from;
    v5->_from = v10;

    v12 = [(TUIAnimationRenderModelStep *)self->_to copy];
    to = v5->_to;
    v5->_to = v12;
  }

  return v5;
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

  v11 = *&self->_timing.damping;
  v25 = *&self->_timing.mass;
  v26 = v11;
  dy = self->_timing.initialVelocity.dy;
  v12 = NSStringFromTUISpringTimingParameters(&v25);
  v13 = [NSString stringWithFormat:@" timing: %@", v12];
  [v3 addObject:v13];

  v14 = [(TUIAnimationRenderModelStep *)self->_from description];
  v15 = [NSString stringWithFormat:@" from: %@", v14];
  [v3 addObject:v15];

  v16 = [(TUIAnimationRenderModelStep *)self->_to description];
  v17 = [NSString stringWithFormat:@" to: %@", v16];
  [v3 addObject:v17];

  [v3 addObject:@" models: { "];
  v25.f64[0] = 0.0;
  *&v25.f64[1] = &v25;
  *&v26 = 0x2020000000;
  BYTE8(v26) = 0;
  models = self->_models;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_17CD90;
  v22[3] = &unk_263698;
  v24 = &v25;
  v19 = v3;
  v23 = v19;
  [(NSArray *)models enumerateObjectsUsingBlock:v22];
  if (*(*&v25.f64[1] + 24) == 1)
  {
    [v19 addObject:@" "];
  }

  [v19 addObject:@"}>"];
  v20 = [v19 componentsJoinedByString:&stru_264550];

  _Block_object_dispose(&v25, 8);

  return v20;
}

- ($2940F3BBF0C500EC413214967FDB6F62)timing
{
  v3 = *&self[1].var3.dy;
  *&retstr->var0 = *&self[1].var2;
  *&retstr->var2 = v3;
  retstr->var3.dy = self[2].var1;
  return self;
}

- (void)setTiming:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->_timing.initialVelocity.dy = a3->var3.dy;
  *&self->_timing.damping = v4;
  *&self->_timing.mass = v3;
}

@end