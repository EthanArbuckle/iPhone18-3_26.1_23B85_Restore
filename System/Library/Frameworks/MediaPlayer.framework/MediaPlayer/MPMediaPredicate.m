@interface MPMediaPredicate
- (BOOL)evaluateEntity:(id)a3;
- (MPMediaPredicate)initWithCoder:(id)a3;
- (MPMediaPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4;
@end

@implementation MPMediaPredicate

- (BOOL)evaluateEntity:(id)a3
{
  v4 = [a3 valueForKey:@"persistentID"];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"persistentID"];
  v6 = [MPMediaQuery alloc];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{self, v5, 0}];
  v8 = [(MPMediaQuery *)v6 initWithFilterPredicates:v7];

  LOBYTE(v7) = [(MPMediaQuery *)v8 _hasItems];
  return v7;
}

- (MPMediaPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"MPMediaPredicate is an abstract class and cannot be decoded."];

  return 0;
}

- (MPMediaPredicate)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"MPMediaPredicate is an abstract class and cannot be decoded."];

  return 0;
}

@end