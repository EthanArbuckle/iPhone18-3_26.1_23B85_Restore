@interface UITapGestureRecognizer
+ (void)addTapGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5;
+ (void)addTapGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5 tapCount:(unint64_t)a6;
+ (void)addTapGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5 tapCount:(unint64_t)a6 touchCount:(unint64_t)a7;
@end

@implementation UITapGestureRecognizer

+ (void)addTapGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:a5];

  [v8 addGestureRecognizer:v9];
}

+ (void)addTapGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5 tapCount:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:a5];

  [v11 setNumberOfTapsRequired:a6];
  [v10 addGestureRecognizer:v11];
}

+ (void)addTapGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5 tapCount:(unint64_t)a6 touchCount:(unint64_t)a7
{
  v11 = a4;
  v12 = a3;
  v13 = [[UITapGestureRecognizer alloc] initWithTarget:v11 action:a5];

  [v13 setNumberOfTapsRequired:a6];
  [v13 setNumberOfTouchesRequired:a7];
  [v12 addGestureRecognizer:v13];
}

@end