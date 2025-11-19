@interface MapsDesignConstantsShim
+ (id)defaultButtonTintColor;
- (_TtC4Maps23MapsDesignConstantsShim)init;
@end

@implementation MapsDesignConstantsShim

+ (id)defaultButtonTintColor
{
  v2 = static MapsDesignConstants.Colors.defaultButtonTintColor()();

  return v2;
}

- (_TtC4Maps23MapsDesignConstantsShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsDesignConstantsShim();
  return [(MapsDesignConstantsShim *)&v3 init];
}

@end