@interface AVTTouchDownGestureRecognizer
- (AVTTouchDownGestureRecognizer)init;
- (AVTTouchDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)_configure;
- (void)requireGestureRecognizerToFail:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation AVTTouchDownGestureRecognizer

- (AVTTouchDownGestureRecognizer)init
{
  v5.receiver = self;
  v5.super_class = AVTTouchDownGestureRecognizer;
  v2 = [(AVTTouchDownGestureRecognizer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVTTouchDownGestureRecognizer *)v2 _configure];
  }

  return v3;
}

- (AVTTouchDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = AVTTouchDownGestureRecognizer;
  v4 = [(AVTTouchDownGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(AVTTouchDownGestureRecognizer *)v4 _configure];
  }

  return v5;
}

- (void)_configure
{
  [(AVTTouchDownGestureRecognizer *)self setAllowsTouchesToPassThrough:1];

  [(AVTTouchDownGestureRecognizer *)self setDelegate:self];
}

- (void)requireGestureRecognizerToFail:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVTTouchDownGestureRecognizer;
  [(AVTTouchDownGestureRecognizer *)&v8 requireGestureRecognizerToFail:v4];
  recognizersRequiredToFail = self->_recognizersRequiredToFail;
  if (!recognizersRequiredToFail)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_recognizersRequiredToFail;
    self->_recognizersRequiredToFail = v6;

    recognizersRequiredToFail = self->_recognizersRequiredToFail;
  }

  [(NSHashTable *)recognizersRequiredToFail addObject:v4];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(AVTTouchDownGestureRecognizer *)self allowsTouchesToPassThrough])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_recognizersRequiredToFail;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 view];
          [v5 locationInView:v12];
          v14 = v13;
          v16 = v15;

          v17 = [v11 view];
          LOBYTE(v12) = [v17 pointInside:0 withEvent:{v14, v16}];

          if (v12)
          {

            goto LABEL_12;
          }
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(AVTTouchDownGestureRecognizer *)self setState:3];
    v18 = 0;
  }

  else
  {
LABEL_12:
    v18 = 1;
  }

  return v18;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(AVTTouchDownGestureRecognizer *)self state:a3])
  {

    [(AVTTouchDownGestureRecognizer *)self setState:3];
  }
}

@end