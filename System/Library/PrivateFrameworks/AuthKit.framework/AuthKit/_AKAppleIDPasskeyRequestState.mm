@interface _AKAppleIDPasskeyRequestState
+ (id)stateWithContext:(id)a3 completion:(id)a4;
@end

@implementation _AKAppleIDPasskeyRequestState

+ (id)stateWithContext:(id)a3 completion:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = objc_alloc_init(_AKAppleIDPasskeyRequestState);
  [(_AKAppleIDPasskeyRequestState *)v7 setContext:location[0]];
  [(_AKAppleIDPasskeyRequestState *)v7 setCompletion:v8];
  v5 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end