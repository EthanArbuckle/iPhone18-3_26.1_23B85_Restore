@interface GameScene
- (GameScene)init;
- (float)launchTrailAt:(CGPoint)at angle:(float)angle speed:(float)speed group:(id)group;
- (void)createFireworkTypeOneAt:(CGPoint)at scale:(float)scale;
- (void)createFireworkTypeTwoAt:(CGPoint)at scale:(float)scale color:(unint64_t)color;
- (void)runChoregraphy;
- (void)runEndingSparkleParticleEmitter:(CGPoint)emitter scale:(float)scale radius:(float)radius color:(id)color;
- (void)runLightHaloEffectAt:(CGPoint)at scale:(float)scale color:(unint64_t)color;
- (void)runOrbParticleEmitter:(CGPoint)emitter scale:(float)scale color:(id)color;
- (void)runSmokeEmitter:(CGPoint)emitter scale:(float)scale color:(id)color;
- (void)runSparkleEmitter:(CGPoint)emitter scale:(float)scale rangeRatio:(float)ratio particleSizeRatio:(float)sizeRatio color:(unint64_t)color texture:(id)texture;
- (void)runTrailParticleEmitter:(CGPoint)emitter scale:(float)scale;
- (void)setup;
@end

@implementation GameScene

- (GameScene)init
{
  v5.receiver = self;
  v5.super_class = GameScene;
  v2 = [(GameScene *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_globalScale = 1.0;
    [(GameScene *)v2 setup];
  }

  return v3;
}

- (void)setup
{
  physicsWorld = [(GameScene *)self physicsWorld];
  [physicsWorld setGravity:{0.0, -0.08}];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage imageNamed:@"Emitter__Glow-Sphere" inBundle:v4];
  v6 = [SKTexture textureWithImage:v5];
  emitterGlowSphereTexture = self->_emitterGlowSphereTexture;
  self->_emitterGlowSphereTexture = v6;

  v8 = [UIImage imageNamed:@"spark" inBundle:v4];
  v9 = [SKTexture textureWithImage:v8];
  sparkTexture = self->_sparkTexture;
  self->_sparkTexture = v9;

  v173 = v4;
  v11 = [UIImage imageNamed:@"spark-softglow" inBundle:v4];
  v12 = [SKTexture textureWithImage:v11];
  sparkSoftGlowTexture = self->_sparkSoftGlowTexture;
  self->_sparkSoftGlowTexture = v12;

  v14 = [UIImage imageNamed:@"BackGlow_1" inBundle:v4];
  v15 = [SKTexture textureWithImage:v14];
  backGlowTexture = self->_backGlowTexture;
  self->_backGlowTexture = v15;

  self->_type1FireworkScale = 2.1;
  v17 = [[SKEmitterNode alloc] initWithMinimumParticleCapacity:8000 minimumPositionBufferCapacity:1000];
  trailParticleEmitter = self->_trailParticleEmitter;
  self->_trailParticleEmitter = v17;

  v19 = self->_trailParticleEmitter;
  [(SKEmitterNode *)v19 setParticleScale:0.09];
  [(SKEmitterNode *)v19 setParticleBirthRate:120.0];
  [(SKEmitterNode *)v19 setParticleTexture:self->_emitterGlowSphereTexture];
  [(SKEmitterNode *)v19 setParticleLifetime:1.0];
  [(SKEmitterNode *)v19 setParticleLifetimeRange:0.5];
  [(SKEmitterNode *)v19 setParticleScaleRange:0.09];
  [(SKEmitterNode *)v19 setParticleScaleSpeed:-0.11];
  [(SKEmitterNode *)v19 setParticlePositionRange:0.0, 0.0];
  [(SKEmitterNode *)v19 setEmissionAngle:1.57079633];
  [(SKEmitterNode *)v19 setEmissionAngleRange:6.28318531];
  [(SKEmitterNode *)v19 setEmissionDistance:0.0];
  [(SKEmitterNode *)v19 setParticleSpeed:1.0];
  [(SKEmitterNode *)v19 setParticleSpeedRange:0.0];
  [(SKEmitterNode *)v19 setXAcceleration:0.0];
  [(SKEmitterNode *)v19 setYAcceleration:0.0];
  [(SKEmitterNode *)v19 setParticleAlpha:0.8];
  [(SKEmitterNode *)v19 setParticleAlphaRange:0.01];
  [(SKEmitterNode *)v19 setParticleAlphaSpeed:-0.03];
  [(SKEmitterNode *)v19 setParticleScaleSpeed:-0.11];
  [(SKEmitterNode *)v19 setParticleRotation:0.0];
  [(SKEmitterNode *)v19 setParticleRotationRange:0.0];
  [(SKEmitterNode *)v19 setParticleRotationSpeed:0.0];
  [(SKEmitterNode *)v19 setParticleColorBlendFactor:1.0];
  [(SKEmitterNode *)v19 setParticleColorBlendFactorRange:0.0];
  [(SKEmitterNode *)v19 setParticleColorBlendFactorSpeed:0.0];
  [(SKEmitterNode *)v19 setUsesPointSprites:1];
  v20 = +[SKNode node];
  trailContainer = self->_trailContainer;
  self->_trailContainer = v20;

  v22 = [SKPhysicsBody bodyWithCircleOfRadius:1.0];
  [(SKNode *)self->_trailContainer setPhysicsBody:v22];

  physicsBody = [(SKNode *)self->_trailContainer physicsBody];
  [physicsBody setAffectedByGravity:0];

  physicsBody2 = [(SKNode *)self->_trailContainer physicsBody];
  [physicsBody2 setCollisionBitMask:0];

  physicsBody3 = [(SKNode *)self->_trailContainer physicsBody];
  [physicsBody3 setContactTestBitMask:0];

  physicsBody4 = [(SKNode *)self->_trailContainer physicsBody];
  [physicsBody4 setFieldBitMask:3];

  physicsBody5 = [(SKNode *)self->_trailContainer physicsBody];
  [physicsBody5 setCategoryBitMask:1];

  self->_type1FireworkTrailCount = 100;
  v28 = [SKKeyframeSequence alloc];
  v29 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v189[0] = v29;
  v30 = [UIColor colorWithRed:0.490196078 green:0.415686275 blue:0.345098039 alpha:1.0];
  v189[1] = v30;
  v31 = [NSArray arrayWithObjects:v189 count:2];
  v32 = [v28 initWithKeyframeValues:v31 times:&off_C648];
  [(SKEmitterNode *)v19 setParticleColorSequence:v32];

  v33 = objc_opt_new();
  orbParticleEmitter = self->_orbParticleEmitter;
  self->_orbParticleEmitter = v33;

  v35 = self->_orbParticleEmitter;
  [(SKEmitterNode *)v35 setParticleScale:0.04];
  [(SKEmitterNode *)v35 setParticleBirthRate:2000.0];
  [(SKEmitterNode *)v35 setParticleTexture:self->_emitterGlowSphereTexture];
  [(SKEmitterNode *)v35 setParticleLifetime:0.5];
  [(SKEmitterNode *)v35 setParticleLifetimeRange:0.1];
  [(SKEmitterNode *)v35 setParticleScaleRange:0.05];
  [(SKEmitterNode *)v35 setParticleScaleSpeed:0.0];
  [(SKEmitterNode *)v35 setEmissionDistance:80.0];
  [(SKEmitterNode *)v35 setParticlePositionRange:1.0, 1.0];
  [(SKEmitterNode *)v35 setParticleSpeed:0.0];
  [(SKEmitterNode *)v35 setParticleSpeedRange:0.0];
  [(SKEmitterNode *)v35 setEmissionAngle:0.0];
  [(SKEmitterNode *)v35 setEmissionAngleRange:0.0];
  [(SKEmitterNode *)v35 setXAcceleration:0.0];
  [(SKEmitterNode *)v35 setYAcceleration:0.0];
  [(SKEmitterNode *)v35 setParticleAlpha:1.0];
  [(SKEmitterNode *)v35 setParticleAlphaRange:0.2];
  [(SKEmitterNode *)v35 setParticleAlphaSpeed:-1.0];
  [(SKEmitterNode *)v35 setParticleColorSequence:0];
  [(SKEmitterNode *)v35 emissionDistance];
  [(SKEmitterNode *)v35 setEmissionDistanceRange:v36 + v36];
  [(SKEmitterNode *)v35 setEmissionAngle:0.0];
  [(SKEmitterNode *)v35 setEmissionAngleRange:6.28318531];
  [(SKEmitterNode *)v35 setParticleColorBlendFactor:1.0];
  [(SKEmitterNode *)v35 setParticleColorBlendFactorRange:0.0];
  [(SKEmitterNode *)v35 setParticleColorBlendFactorSpeed:0.0];
  [(SKEmitterNode *)v35 setParticleColorBlendFactorSequence:0];
  [(SKEmitterNode *)v35 setParticleBlendMode:1];
  [(SKEmitterNode *)v35 setUsesPointSprites:1];
  [(SKEmitterNode *)v35 setTargetNode:self];
  v37 = [SKPhysicsBody bodyWithCircleOfRadius:0.5];
  [(SKEmitterNode *)v35 setPhysicsBody:v37];

  physicsBody6 = [(SKEmitterNode *)v35 physicsBody];
  [physicsBody6 setAffectedByGravity:0];

  physicsBody7 = [(SKEmitterNode *)v35 physicsBody];
  [physicsBody7 setCollisionBitMask:0];

  physicsBody8 = [(SKEmitterNode *)v35 physicsBody];
  [physicsBody8 setFieldBitMask:0];

  self->_type2FireworkScale = 1.6;
  v41 = objc_opt_new();
  sparklesParticleEmitter = self->_sparklesParticleEmitter;
  self->_sparklesParticleEmitter = v41;

  v43 = self->_sparklesParticleEmitter;
  [(SKEmitterNode *)v43 setParticleScale:0.1];
  [(SKEmitterNode *)v43 setParticleBirthRate:1500.0];
  [(SKEmitterNode *)v43 setNumParticlesToEmit:100];
  [(SKEmitterNode *)v43 setParticleLifetime:3.0];
  [(SKEmitterNode *)v43 setParticleLifetimeRange:0.0];
  [(SKEmitterNode *)v43 setParticleScaleRange:0.2];
  [(SKEmitterNode *)v43 setParticleScaleSpeed:-0.2];
  [(SKEmitterNode *)v43 setParticlePositionRange:0.0, 0.0];
  [(SKEmitterNode *)v43 setEmissionAngle:0.0];
  [(SKEmitterNode *)v43 setEmissionAngleRange:6.28318531];
  [(SKEmitterNode *)v43 setParticleSpeed:200.0];
  [(SKEmitterNode *)v43 setParticleSpeedRange:20.0];
  [(SKEmitterNode *)v43 setXAcceleration:0.0];
  [(SKEmitterNode *)v43 setYAcceleration:0.0];
  [(SKEmitterNode *)v43 setParticleAlpha:1.0];
  [(SKEmitterNode *)v43 setParticleAlphaRange:0.2];
  [(SKEmitterNode *)v43 setParticleAlphaSpeed:-0.2];
  [(SKEmitterNode *)v43 setParticleColorSequence:0];
  [(SKEmitterNode *)v43 setParticleColorBlendFactor:1.0];
  [(SKEmitterNode *)v43 setParticleColorBlendFactorRange:0.0];
  [(SKEmitterNode *)v43 setParticleColorBlendFactorSpeed:0.0];
  [(SKEmitterNode *)v43 setParticleColorBlendFactorSequence:0];
  [(SKEmitterNode *)v43 setParticleBlendMode:1];
  [(SKEmitterNode *)v43 setUsesPointSprites:1];
  v44 = [SKPhysicsBody bodyWithCircleOfRadius:0.5];
  [(SKEmitterNode *)v43 setPhysicsBody:v44];

  physicsBody9 = [(SKEmitterNode *)v43 physicsBody];
  [physicsBody9 setAffectedByGravity:1];

  physicsBody10 = [(SKEmitterNode *)v43 physicsBody];
  [physicsBody10 setCollisionBitMask:0];

  physicsBody11 = [(SKEmitterNode *)v43 physicsBody];
  [physicsBody11 setFieldBitMask:0];

  objc_storeStrong(&self->_sparklesType1Texture, self->_sparkTexture);
  objc_storeStrong(&self->_sparklesType2Texture, self->_sparkSoftGlowTexture);
  v48 = objc_opt_new();
  smokeParticleEmitter = self->_smokeParticleEmitter;
  self->_smokeParticleEmitter = v48;

  v50 = self->_smokeParticleEmitter;
  [(SKEmitterNode *)v50 setParticleScale:0.46];
  [(SKEmitterNode *)v50 setParticleBirthRate:1500.0];
  [(SKEmitterNode *)v50 setParticleTexture:self->_sparkTexture];
  [(SKEmitterNode *)v50 setNumParticlesToEmit:20];
  [(SKEmitterNode *)v50 setParticleLifetime:2.0];
  [(SKEmitterNode *)v50 setParticleLifetimeRange:0.0];
  [(SKEmitterNode *)v50 setParticleScaleRange:0.2];
  [(SKEmitterNode *)v50 setParticleScaleSpeed:-0.02];
  [(SKEmitterNode *)v50 setParticleRotationSpeed:0.2];
  [(SKEmitterNode *)v50 setParticleRotationRange:6.28318531];
  [(SKEmitterNode *)v50 setParticlePositionRange:60.0, 60.0];
  [(SKEmitterNode *)v50 setParticleColorSequence:0];
  [(SKEmitterNode *)v50 setEmissionAngle:0.0];
  [(SKEmitterNode *)v50 setEmissionAngleRange:6.28318531];
  [(SKEmitterNode *)v50 setParticleSpeed:10.0];
  [(SKEmitterNode *)v50 setParticleSpeedRange:10.0];
  [(SKEmitterNode *)v50 setXAcceleration:0.0];
  [(SKEmitterNode *)v50 setYAcceleration:0.0];
  [(SKEmitterNode *)v50 setParticleAlpha:0.5];
  [(SKEmitterNode *)v50 setParticleAlphaRange:0.3];
  [(SKEmitterNode *)v50 setParticleAlphaSpeed:-0.3];
  [(SKEmitterNode *)v50 setUsesPointSprites:1];
  [(SKEmitterNode *)v50 setParticleColorBlendFactor:1.0];
  [(SKEmitterNode *)v50 setParticleColorBlendFactorRange:0.0];
  [(SKEmitterNode *)v50 setParticleColorBlendFactorSpeed:0.0];
  [(SKEmitterNode *)v50 setParticleColorBlendFactorSequence:0];
  [(SKEmitterNode *)v50 setParticleBlendMode:1];
  v51 = [SKPhysicsBody bodyWithCircleOfRadius:0.5];
  [(SKEmitterNode *)v50 setPhysicsBody:v51];

  physicsBody12 = [(SKEmitterNode *)v50 physicsBody];
  [physicsBody12 setAffectedByGravity:1];

  physicsBody13 = [(SKEmitterNode *)v50 physicsBody];
  [physicsBody13 setCollisionBitMask:0];

  physicsBody14 = [(SKEmitterNode *)v50 physicsBody];
  [physicsBody14 setFieldBitMask:0];

  v55 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  whiteColor = self->_whiteColor;
  self->_whiteColor = v55;

  v57 = [UIColor colorWithVectorRGBA:0.00471875164];
  type1SmokeColor = self->_type1SmokeColor;
  self->_type1SmokeColor = v57;

  [(SKEmitterNode *)self->_sparklesParticleEmitter particleLifetime];
  v60 = v59;
  v61 = [UIColor colorWithRed:1.0 green:0.266666667 blue:0.501960784 alpha:1.0];
  type2FireworkInnerPinkColor = self->_type2FireworkInnerPinkColor;
  self->_type2FireworkInnerPinkColor = v61;

  v63 = [UIColor colorWithRed:0.992156863 green:0.203921569 blue:0.376470588 alpha:1.0];
  type2FireworkOuterPinkColor = self->_type2FireworkOuterPinkColor;
  self->_type2FireworkOuterPinkColor = v63;

  v65 = [UIColor colorWithRed:1.0 green:0.670588235 blue:0.729411765 alpha:1.0];
  v188[0] = v65;
  v66 = [UIColor colorWithRed:0.992156863 green:0.203921569 blue:0.376470588 alpha:1.0];
  v188[1] = v66;
  v67 = [UIColor colorWithRed:0.992156863 green:0.0666666667 blue:0.266666667 alpha:1.0];
  v188[2] = v67;
  v68 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  v188[3] = v68;
  v172 = [NSArray arrayWithObjects:v188 count:4];

  v187[0] = &off_C5B8;
  v69 = v60;
  v70 = [NSNumber numberWithDouble:v69 * 0.05];
  v187[1] = v70;
  v71 = [NSNumber numberWithDouble:v69 * 0.3];
  v187[2] = v71;
  v72 = [NSNumber numberWithDouble:v69];
  v187[3] = v72;
  v73 = [NSArray arrayWithObjects:v187 count:4];

  v74 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v172 times:v73];
  type2FireworkOuterPinkColorSequence = self->_type2FireworkOuterPinkColorSequence;
  self->_type2FireworkOuterPinkColorSequence = v74;

  v76 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:0.992156863 blue:? alpha:?];
  v186[0] = v76;
  v77 = [UIColor colorWithRed:1.0 green:0.266666667 blue:0.501960784 alpha:1.0];
  v186[1] = v77;
  v78 = [UIColor colorWithRed:1.0 green:0.247058824 blue:0.596078431 alpha:1.0];
  v186[2] = v78;
  v79 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  v186[3] = v79;
  v80 = [NSArray arrayWithObjects:v186 count:4];

  v185[0] = &off_C5B8;
  v81 = [NSNumber numberWithDouble:?];
  v185[1] = v81;
  v82 = [NSNumber numberWithDouble:?];
  v185[2] = v82;
  v83 = [NSNumber numberWithDouble:v69];
  v185[3] = v83;
  v84 = [NSArray arrayWithObjects:v185 count:4];

  v85 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v80 times:v84];
  type2FireworkInnerPinkColorSequence = self->_type2FireworkInnerPinkColorSequence;
  self->_type2FireworkInnerPinkColorSequence = v85;

  v87 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  type2FireworkInnerBlueColor = self->_type2FireworkInnerBlueColor;
  self->_type2FireworkInnerBlueColor = v87;

  v89 = [UIColor colorWithRed:0.51372549 green:0.807843137 blue:0.949019608 alpha:1.0];
  type2FireworkOuterBlueColor = self->_type2FireworkOuterBlueColor;
  self->_type2FireworkOuterBlueColor = v89;

  v91 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  v184[0] = v91;
  v92 = [UIColor colorWithRed:0.51372549 green:0.807843137 blue:0.949019608 alpha:1.0];
  v184[1] = v92;
  v93 = [UIColor colorWithRed:0.419607843 green:0.843137255 blue:0.992156863 alpha:1.0];
  v184[2] = v93;
  v94 = [UIColor colorWithRed:0.917647059 green:0.870588235 blue:0.968627451 alpha:0.0];
  v184[3] = v94;
  v171 = [NSArray arrayWithObjects:v184 count:4];

  v183[0] = &off_C5B8;
  v95 = [NSNumber numberWithDouble:v69 * 0.08];
  v183[1] = v95;
  v96 = [NSNumber numberWithDouble:v69 * 0.37];
  v183[2] = v96;
  v97 = [NSNumber numberWithDouble:v69];
  v183[3] = v97;
  v170 = [NSArray arrayWithObjects:v183 count:4];

  v98 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v171 times:v170];
  type2FireworkOuterBlueColorSequence = self->_type2FireworkOuterBlueColorSequence;
  self->_type2FireworkOuterBlueColorSequence = v98;

  v100 = [UIColor colorWithRed:0.894117647 green:0.882352941 blue:0.992156863 alpha:1.0];
  v182[0] = v100;
  v101 = [UIColor colorWithRed:0.564705882 green:0.835294118 blue:0.956862745 alpha:1.0];
  v182[1] = v101;
  v102 = [UIColor colorWithRed:0.694117647 green:0.992156863 blue:0.992156863 alpha:1.0];
  v182[2] = v102;
  v103 = [UIColor colorWithRed:0.952941176 green:0.870588235 blue:0.968627451 alpha:0.0];
  v182[3] = v103;
  v104 = [NSArray arrayWithObjects:v182 count:4];

  v181[0] = &off_C5B8;
  v105 = [NSNumber numberWithDouble:v69 * 0.07];
  v181[1] = v105;
  v106 = [NSNumber numberWithDouble:v69 * 0.4];
  v181[2] = v106;
  v107 = [NSNumber numberWithDouble:v69];
  v181[3] = v107;
  v108 = [NSArray arrayWithObjects:v181 count:4];

  v109 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v104 times:v108];
  type2FireworkInnerBlueColorSequence = self->_type2FireworkInnerBlueColorSequence;
  self->_type2FireworkInnerBlueColorSequence = v109;

  v111 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  type2FireworkInnerGreenColor = self->_type2FireworkInnerGreenColor;
  self->_type2FireworkInnerGreenColor = v111;

  v113 = [UIColor colorWithRed:0.615686275 green:0.992156863 blue:0.0274509804 alpha:1.0];
  type2FireworkOuterGreenColor = self->_type2FireworkOuterGreenColor;
  self->_type2FireworkOuterGreenColor = v113;

  v115 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  v180[0] = v115;
  v116 = [UIColor colorWithRed:0.615686275 green:0.992156863 blue:0.0274509804 alpha:1.0];
  v180[1] = v116;
  v117 = [UIColor colorWithRed:0.737254902 green:0.97254902 blue:0.235294118 alpha:1.0];
  v180[2] = v117;
  v118 = [UIColor colorWithRed:0.949019608 green:0.964705882 blue:0.870588235 alpha:0.0];
  v180[3] = v118;
  v174 = [NSArray arrayWithObjects:v180 count:4];

  v179[0] = &off_C5B8;
  v119 = [NSNumber numberWithDouble:v69 * 0.06];
  v179[1] = v119;
  v120 = [NSNumber numberWithDouble:v69 * 0.38];
  v179[2] = v120;
  v121 = [NSNumber numberWithDouble:v69];
  v179[3] = v121;
  v122 = [NSArray arrayWithObjects:v179 count:4];

  v123 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v174 times:v122];
  type2FireworkOuterGreenColorSequence = self->_type2FireworkOuterGreenColorSequence;
  self->_type2FireworkOuterGreenColorSequence = v123;

  v125 = [UIColor colorWithRed:0.949019608 green:0.984313725 blue:0.82745098 alpha:1.0];
  v178[0] = v125;
  v126 = [UIColor colorWithRed:0.847058824 green:0.941176471 blue:0.376470588 alpha:1.0];
  v178[1] = v126;
  v127 = [UIColor colorWithRed:0.839215686 green:0.992156863 blue:0.188235294 alpha:1.0];
  v178[2] = v127;
  v128 = [UIColor colorWithRed:0.988235294 green:0.984313725 blue:0.905882353 alpha:0.0];
  v178[3] = v128;
  v129 = [NSArray arrayWithObjects:v178 count:4];

  v177[0] = &off_C5B8;
  v130 = [NSNumber numberWithDouble:v69 * 0.06];
  v177[1] = v130;
  v131 = [NSNumber numberWithDouble:v69 * 0.36];
  v177[2] = v131;
  v132 = [NSNumber numberWithDouble:v69];
  v177[3] = v132;
  v133 = [NSArray arrayWithObjects:v177 count:4];

  v134 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v129 times:v133];
  type2FireworkInnerGreenColorSequence = self->_type2FireworkInnerGreenColorSequence;
  self->_type2FireworkInnerGreenColorSequence = v134;

  v136 = [UIColor colorWithRed:1.0 green:0.97254902 blue:0.898039216 alpha:1.0];
  v176[0] = v136;
  v137 = [UIColor colorWithRed:1.0 green:0.960784314 blue:0.905882353 alpha:1.0];
  v176[1] = v137;
  v138 = [UIColor colorWithRed:0.992156863 green:0.992156863 blue:0.898039216 alpha:1.0];
  v176[2] = v138;
  v139 = [NSArray arrayWithObjects:v176 count:3];

  v140 = [UIColor colorWithRed:1.0 green:0.980392157 blue:0.921568627 alpha:1.0];
  v175[0] = v140;
  v141 = [UIColor colorWithRed:1.0 green:0.960784314 blue:0.905882353 alpha:1.0];
  v175[1] = v141;
  v142 = [UIColor colorWithRed:0.992156863 green:0.992156863 blue:0.898039216 alpha:1.0];
  v175[2] = v142;
  v143 = [NSArray arrayWithObjects:v175 count:3];

  v144 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v139 times:&off_C660];
  type1FireworkSequence1 = self->_type1FireworkSequence1;
  self->_type1FireworkSequence1 = v144;

  v146 = [[SKKeyframeSequence alloc] initWithKeyframeValues:v143 times:&off_C660];
  type1FireworkSequence2 = self->_type1FireworkSequence2;
  self->_type1FireworkSequence2 = v146;

  v148 = +[SKFieldNode dragField];
  dragField = self->_dragField;
  self->_dragField = v148;

  LODWORD(v150) = 973279855;
  [(SKFieldNode *)self->_dragField setStrength:v150];
  [(SKFieldNode *)self->_dragField setCategoryBitMask:1];
  v151 = [SKFieldNode turbulenceFieldWithSmoothness:0.2 animationSpeed:1.0];
  noiseField = self->_noiseField;
  self->_noiseField = v151;

  LODWORD(v153) = 0.5;
  [(SKFieldNode *)self->_noiseField setStrength:v153];
  [(SKFieldNode *)self->_noiseField setCategoryBitMask:2];
  v154 = [SKFieldNode turbulenceFieldWithSmoothness:0.2 animationSpeed:0.1];
  intenseNoiseField = self->_intenseNoiseField;
  self->_intenseNoiseField = v154;

  LODWORD(v156) = 12.0;
  [(SKFieldNode *)self->_intenseNoiseField setStrength:v156];
  [(SKFieldNode *)self->_intenseNoiseField setCategoryBitMask:4];
  [(GameScene *)self addChild:self->_dragField];
  [(GameScene *)self addChild:self->_noiseField];
  [(GameScene *)self addChild:self->_intenseNoiseField];
  [(GameScene *)self frame];
  v158 = v157;
  [(GameScene *)self frame];
  if (v158 >= v159)
  {
    v160 = v158;
  }

  else
  {
    v160 = v159;
  }

  v161 = v160;
  v170 = [SKSpriteNode spriteNodeWithTexture:self->_backGlowTexture size:v161, v161, v170];
  lightHalo = self->_lightHalo;
  self->_lightHalo = v170;

  self->_backGlowScale = 0.75;
  self->_backGlowAlpha = 1.0;
  self->_backGlowDuration = 1.55;
  v164 = +[UIColor clearColor];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v164;

  v166 = [UIColor colorWithRed:0.125490196 green:0.11372549 blue:0.145098039 alpha:1.0];
  backgroundLitColor = self->_backgroundLitColor;
  self->_backgroundLitColor = v166;

  v168 = self->_backgroundColor;
  scene = [(GameScene *)self scene];
  [scene setBackgroundColor:v168];
}

- (void)runChoregraphy
{
  [(GameScene *)self removeAllActions];
  view = [(GameScene *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  globalScale = self->_globalScale;
  type1FireworkScale = self->_type1FireworkScale;
  *&v7 = v7;
  type2FireworkScale = self->_type2FireworkScale;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_2FB8;
  v86[3] = &unk_C250;
  v86[4] = self;
  v87 = v8;
  v88 = LODWORD(v7);
  v89 = globalScale;
  v90 = type1FireworkScale;
  v12 = objc_retainBlock(v86);
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_301C;
  v81[3] = &unk_C250;
  v81[4] = self;
  v82 = v8;
  v83 = LODWORD(v7);
  v84 = globalScale;
  v85 = type2FireworkScale;
  v13 = objc_retainBlock(v81);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_3080;
  v76[3] = &unk_C250;
  v76[4] = self;
  v77 = v8;
  v78 = LODWORD(v7);
  v79 = globalScale;
  v80 = type2FireworkScale;
  v14 = objc_retainBlock(v76);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_30E4;
  v71[3] = &unk_C250;
  v71[4] = self;
  v72 = v8;
  v73 = LODWORD(v7);
  v74 = globalScale;
  v75 = type2FireworkScale;
  v15 = objc_retainBlock(v71);
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_315C;
  v66[3] = &unk_C250;
  v66[4] = self;
  v67 = v8;
  v68 = LODWORD(v7);
  v69 = globalScale;
  v70 = type2FireworkScale;
  v16 = objc_retainBlock(v66);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_31C0;
  v61[3] = &unk_C250;
  v61[4] = self;
  v62 = v8;
  v63 = LODWORD(v7);
  v64 = globalScale;
  v65 = type1FireworkScale;
  v17 = objc_retainBlock(v61);
  v52 = v12;
  v18 = objc_retainBlock(v12);
  v92[0] = v18;
  v51 = v13;
  v19 = objc_retainBlock(v13);
  v92[1] = v19;
  v50 = v14;
  v20 = objc_retainBlock(v14);
  v92[2] = v20;
  v49 = v15;
  v21 = objc_retainBlock(v15);
  v92[3] = v21;
  v48 = v16;
  v22 = objc_retainBlock(v16);
  v92[4] = v22;
  v47 = v17;
  v23 = objc_retainBlock(v17);
  v92[5] = v23;
  v24 = [NSArray arrayWithObjects:v92 count:6];

  v25 = +[NSMutableArray array];
  v26 = 0;
  LODWORD(v27) = 0;
  do
  {
    v28 = flt_81CC[v26];
    v29 = [SKAction waitForDuration:(v28 - *&v27)];
    [v25 addObject:v29];

    v30 = [v24 objectAtIndexedSubscript:v26];
    v31 = [SKAction runBlock:v30];
    [v25 addObject:v31];

    ++v26;
    *&v27 = v28;
  }

  while (v26 != 6);
  v32 = [SKAction sequence:v25, v27];
  [(GameScene *)self runAction:v32];

  v33 = self->_backgroundColor;
  v34 = self->_backgroundLitColor;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_3224;
  v57[3] = &unk_C278;
  v35 = v33;
  v58 = v35;
  v36 = v34;
  v59 = v36;
  selfCopy = self;
  v44 = objc_retainBlock(v57);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_339C;
  v53[3] = &unk_C278;
  v54 = v36;
  v55 = v35;
  selfCopy2 = self;
  v46 = v35;
  v45 = v36;
  v37 = objc_retainBlock(v53);
  v38 = [SKAction waitForDuration:0.409999996];
  v91[0] = v38;
  v39 = [SKAction customActionWithDuration:v44 actionBlock:0.819999993];
  v91[1] = v39;
  v40 = [SKAction waitForDuration:1.0];
  v91[2] = v40;
  v41 = [SKAction customActionWithDuration:v37 actionBlock:1.73000002];
  v91[3] = v41;
  v42 = [NSArray arrayWithObjects:v91 count:4];
  v43 = [SKAction sequence:v42];
  [(GameScene *)self runAction:v43];
}

- (void)runLightHaloEffectAt:(CGPoint)at scale:(float)scale color:(unint64_t)color
{
  y = at.y;
  x = at.x;
  v10 = [(SKSpriteNode *)self->_lightHalo copy];
  [v10 setPosition:{x, y}];
  [v10 setScale:(self->_backGlowScale * scale)];
  [v10 setAlpha:self->_backGlowAlpha];
  [v10 setColorBlendFactor:1.0];
  if (color <= 3)
  {
    [v10 setColor:*(&self->super.super.super.super.super.isa + *(&off_C418)[color])];
  }

  [(GameScene *)self addChild:v10];
  v11 = [SKAction fadeOutWithDuration:self->_backGlowDuration];
  v15[0] = v11;
  v12 = +[SKAction removeFromParent];
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];
  v14 = [SKAction sequence:v13];
  [v10 runAction:v14];
}

- (void)createFireworkTypeOneAt:(CGPoint)at scale:(float)scale
{
  y = at.y;
  x = at.x;
  [GameScene runOrbParticleEmitter:"runOrbParticleEmitter:scale:color:" scale:self->_whiteColor color:?];
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  *&v10 = scale;
  [(GameScene *)self runSparkleEmitter:0 scale:self->_sparklesType1Texture rangeRatio:x particleSizeRatio:y color:v10 texture:v8, v9];
  *&v11 = scale;
  [(GameScene *)self runTrailParticleEmitter:x scale:y, v11];
  *&v12 = scale;
  [(GameScene *)self runSmokeEmitter:self->_type1SmokeColor scale:x color:y, v12];

  *&v13 = scale * 0.5;
  [(GameScene *)self runLightHaloEffectAt:0 scale:x color:y, v13];
}

- (void)createFireworkTypeTwoAt:(CGPoint)at scale:(float)scale color:(unint64_t)color
{
  y = at.y;
  x = at.x;
  v9 = &OBJC_IVAR___GameScene__type2FireworkOuterPinkColor;
  v10 = &OBJC_IVAR___GameScene__type2FireworkInnerBlueColor;
  v11 = &OBJC_IVAR___GameScene__type2FireworkOuterBlueColor;
  v12 = 6;
  v13 = 7;
  v14 = 2;
  if (color == 3)
  {
    v11 = &OBJC_IVAR___GameScene__type2FireworkOuterGreenColor;
    v10 = &OBJC_IVAR___GameScene__type2FireworkInnerGreenColor;
    v14 = 3;
    v13 = 9;
    v12 = 8;
  }

  if (color == 1)
  {
    v15 = &OBJC_IVAR___GameScene__type2FireworkInnerPinkColor;
  }

  else
  {
    v9 = v11;
    v15 = v10;
  }

  if (color == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14;
  }

  if (color == 1)
  {
    v17 = 5;
  }

  else
  {
    v17 = v13;
  }

  if (color == 1)
  {
    v18 = 4;
  }

  else
  {
    v18 = v12;
  }

  v19 = *(&self->super.super.super.super.super.isa + *v9);
  v35 = *(&self->super.super.super.super.super.isa + *v15);
  *&v20 = scale;
  [(GameScene *)self runSmokeEmitter:v19 scale:x color:y, v20];
  LODWORD(v21) = 1066192077;
  LODWORD(v22) = 0.5;
  *&v23 = scale;
  [(GameScene *)self runSparkleEmitter:0 scale:self->_sparklesType2Texture rangeRatio:x particleSizeRatio:y color:v23 texture:v21, v22];
  LODWORD(v24) = 1.5;
  *&v25 = scale;
  [(GameScene *)self runEndingSparkleParticleEmitter:v19 scale:x radius:y color:v25, v24];
  LODWORD(v26) = 0.5;
  *&v27 = scale;
  [(GameScene *)self runEndingSparkleParticleEmitter:v35 scale:x radius:y color:v27, v26];
  LODWORD(v28) = 1.0;
  LODWORD(v29) = 1.5;
  *&v30 = scale;
  [(GameScene *)self runSparkleEmitter:v17 scale:self->_sparklesType2Texture rangeRatio:x particleSizeRatio:y color:v30 texture:v28, v29];
  LODWORD(v31) = 1051931443;
  LODWORD(v32) = 1.0;
  *&v33 = scale;
  [(GameScene *)self runSparkleEmitter:v18 scale:self->_sparklesType2Texture rangeRatio:x particleSizeRatio:y color:v33 texture:v31, v32];
  *&v34 = scale * 0.5;
  [(GameScene *)self runLightHaloEffectAt:v16 scale:x color:y, v34];
}

- (void)runSparkleEmitter:(CGPoint)emitter scale:(float)scale rangeRatio:(float)ratio particleSizeRatio:(float)sizeRatio color:(unint64_t)color texture:(id)texture
{
  y = emitter.y;
  x = emitter.x;
  textureCopy = texture;
  v16 = [(SKEmitterNode *)self->_sparklesParticleEmitter copy];
  [v16 setPosition:{x, y}];
  [v16 particleScale];
  [v16 setParticleScale:v17 * (scale * sizeRatio)];
  [v16 particleSpeed];
  v18 = (scale * ratio);
  [v16 setParticleSpeed:v19 * v18];
  [v16 particleSpeedRange];
  [v16 setParticleSpeedRange:v20 * v18];
  [v16 setParticleColorSequence:0];
  [v16 setParticleColorBlendFactor:1.0];
  [v16 setParticleColorBlendFactorRange:0.0];
  [v16 setParticleColorBlendFactorSpeed:0.0];
  [v16 setParticleBlendMode:1];
  if ([(GameScene *)self shouldReduceParticles])
  {
    v21 = 0.8;
  }

  else
  {
    if (ratio >= 1.0)
    {
      goto LABEL_6;
    }

    v21 = 1.2;
  }

  [v16 setNumParticlesToEmit:{(v21 * objc_msgSend(v16, "numParticlesToEmit"))}];
LABEL_6:
  if (color <= 5)
  {
    if (color)
    {
      if (color == 4)
      {
        v22 = 120;
        goto LABEL_21;
      }

      if (color == 5)
      {
        v22 = 128;
LABEL_21:
        [v16 setParticleColorSequence:*(&self->super.super.super.super.super.isa + v22)];
      }
    }

    else
    {
      [v16 setParticleColor:self->_whiteColor];
    }
  }

  else
  {
    if (color <= 7)
    {
      if (color == 6)
      {
        v22 = 152;
      }

      else
      {
        v22 = 160;
      }

      goto LABEL_21;
    }

    if (color == 8)
    {
      v22 = 184;
      goto LABEL_21;
    }

    if (color == 9)
    {
      v22 = 192;
      goto LABEL_21;
    }
  }

  [v16 setParticleTexture:textureCopy];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_4080;
  v54[3] = &unk_C2E0;
  v23 = v16;
  v55 = v23;
  v24 = objc_retainBlock(v54);
  v25 = [SKKeyframeSequence alloc];
  v57[0] = &off_C6A8;
  [v23 particleLifetime];
  v27 = [NSNumber numberWithDouble:v26 * 3.0 * 0.25];
  v57[1] = v27;
  [v23 particleLifetime];
  v28 = [NSNumber numberWithDouble:?];
  v57[2] = v28;
  v29 = [NSArray arrayWithObjects:v57 count:3];
  v30 = [v25 initWithKeyframeValues:&off_C678 times:v29];

  [v23 setParticleSpeedSequence:v30];
  [v23 particleLifetime];
  v32 = v31;
  [v23 particleLifetimeRange];
  v34 = [SKAction waitForDuration:v32 + v33];
  v56[0] = v34;
  v35 = [SKAction runBlock:v24];
  v56[1] = v35;
  v36 = +[SKAction removeFromParent];
  v56[2] = v36;
  v37 = [NSArray arrayWithObjects:v56 count:3];
  v38 = [SKAction sequence:v37];
  [v23 runAction:v38];

  [(GameScene *)self addChild:v23];
  subEmitterNode = [v23 subEmitterNode];
  subEmitterNode2 = [v23 subEmitterNode];
  [subEmitterNode2 particleScale];
  [subEmitterNode2 setParticleScale:v41 * 0.5];
  [subEmitterNode2 particleSpeed];
  [subEmitterNode2 setParticleSpeed:v42 * 0.2];
  [subEmitterNode2 setNumParticlesToEmit:{(objc_msgSend(subEmitterNode2, "numParticlesToEmit") * 0.2)}];
  [subEmitterNode2 setParticleBirthRate:{objc_msgSend(subEmitterNode2, "numParticlesToEmit") * 10.0}];
  [v23 particleScale];
  v52 = v43;
  [v23 particleSpeed];
  v45 = v44;
  numParticlesToEmit = [v23 numParticlesToEmit];
  [v23 particleBirthRate];
  v47.f64[0] = v52;
  v47.f64[1] = v48;
  v53 = vcvt_f32_f64(v47);
  v49 = 5;
  v51 = xmmword_81A0;
  do
  {
    subEmitterNode3 = [v23 subEmitterNode];
    v45 = v45 * 0.8;
    numParticlesToEmit = numParticlesToEmit * 0.5;
    v53 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v53), v51));
    [subEmitterNode3 setParticleScale:v53.f32[0]];
    [subEmitterNode3 setParticleSpeed:v45];
    [subEmitterNode3 setNumParticlesToEmit:numParticlesToEmit];
    [subEmitterNode3 setParticleBirthRate:v53.f32[1]];
    [v23 addChild:subEmitterNode3];

    --v49;
  }

  while (v49);
  [v23 addChild:subEmitterNode];
  [v23 addChild:subEmitterNode2];
}

- (void)runSmokeEmitter:(CGPoint)emitter scale:(float)scale color:(id)color
{
  y = emitter.y;
  x = emitter.x;
  smokeParticleEmitter = self->_smokeParticleEmitter;
  colorCopy = color;
  v11 = [(SKEmitterNode *)smokeParticleEmitter copy];
  [v11 setPosition:{x, y}];
  [v11 setParticleColor:colorCopy];

  [v11 particleLifetime];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_42E8;
  v25 = &unk_C308;
  *&y = v12 * 0.8;
  v27 = LODWORD(y);
  v26 = v11;
  v13 = v11;
  v14 = objc_retainBlock(&v22);
  v15 = *&y;
  v16 = [SKAction customActionWithDuration:v14 actionBlock:v15, v22, v23, v24, v25];
  v28[0] = v16;
  [v13 particleLifetime];
  v18 = [SKAction waitForDuration:v17 - v15];
  v28[1] = v18;
  v19 = +[SKAction removeFromParent];
  v28[2] = v19;
  v20 = [NSArray arrayWithObjects:v28 count:3];
  v21 = [SKAction sequence:v20];

  [v13 runAction:v21];
  [v13 setScale:scale];
  [(GameScene *)self addChild:v13];
}

- (void)runOrbParticleEmitter:(CGPoint)emitter scale:(float)scale color:(id)color
{
  y = emitter.y;
  x = emitter.x;
  orbParticleEmitter = self->_orbParticleEmitter;
  colorCopy = color;
  v11 = [(SKEmitterNode *)orbParticleEmitter copy];
  v12 = [(SKEmitterNode *)self->_orbParticleEmitter copy];
  [v11 particleScale];
  v14 = v13;
  [v11 particleScale];
  v16 = v15 * 0.01;
  [v11 particleBirthRate];
  v18 = v17;
  [v11 emissionDistance];
  scaleCopy = scale;
  v21 = v20 * scaleCopy;
  [v11 setParticleColor:colorCopy];

  particleColor = [v11 particleColor];
  [v12 setParticleColor:particleColor];

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_4720;
  v49[3] = &unk_C330;
  v52 = v14;
  v53 = v16;
  v23 = v11;
  v50 = v23;
  v24 = v12;
  v51 = v24;
  v54 = v21;
  v55 = v18;
  v44 = objc_retainBlock(v49);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_4858;
  v46[3] = &unk_C358;
  v47 = v23;
  v48 = v24;
  v25 = v24;
  v26 = v23;
  v43 = objc_retainBlock(v46);
  v27 = [SKAction customActionWithDuration:v44 actionBlock:1.10000002];
  v57[0] = v27;
  v28 = [SKAction runBlock:v43];
  v57[1] = v28;
  [v26 particleLifetime];
  v30 = v29;
  [v26 particleLifetimeRange];
  v32 = [SKAction waitForDuration:v30 + v31];
  v57[2] = v32;
  v33 = +[SKAction removeFromParent];
  v57[3] = v33;
  v34 = [NSArray arrayWithObjects:v57 count:4];
  v35 = [SKAction sequence:v34];

  [v26 particleLifetime];
  v37 = v36 + 1.10000002;
  [v26 particleLifetimeRange];
  v39 = [SKAction waitForDuration:v37 + v38];
  v56[0] = v39;
  v40 = +[SKAction removeFromParent];
  v56[1] = v40;
  v41 = [NSArray arrayWithObjects:v56 count:2];
  v42 = [SKAction sequence:v41];

  [v26 setPosition:{x, y}];
  [v25 setPosition:{x, y}];
  [v26 setScale:scaleCopy];
  [v25 setScale:scaleCopy];
  [(GameScene *)self addChild:v26];
  [v26 runAction:v35];
  [(GameScene *)self addChild:v25];
  [v25 runAction:v42];
}

- (void)runEndingSparkleParticleEmitter:(CGPoint)emitter scale:(float)scale radius:(float)radius color:(id)color
{
  y = emitter.y;
  x = emitter.x;
  orbParticleEmitter = self->_orbParticleEmitter;
  colorCopy = color;
  v13 = [(SKEmitterNode *)orbParticleEmitter copy];
  [v13 emissionDistance];
  v15 = v14;
  [v13 setParticleColor:colorCopy];

  [v13 setParticleAlpha:1.0];
  [v13 setParticleAlphaRange:0.0];
  [v13 setParticleBirthRate:0.0];
  selfCopy = self;
  [v13 setParticleTexture:self->_sparklesType2Texture];
  [v13 setParticleLifetime:0.6];
  [v13 setParticleLifetimeRange:1.0];
  [v13 setParticleSpeed:0.0];
  [v13 setNumParticlesToEmit:0];
  [v13 setYAcceleration:-6.0];
  [v13 particleScaleRange];
  [v13 setParticleScaleRange:v16 * 1.5];
  [v13 particleScale];
  scaleCopy = scale;
  [v13 setParticleScale:v18 * scaleCopy];
  [v13 setYAcceleration:-30.0];
  physicsBody = [v13 physicsBody];
  [physicsBody setAffectedByGravity:1];

  [v13 setEmissionDistance:(v15 * radius)];
  [v13 emissionDistance];
  [v13 setEmissionDistanceRange:v20 + v20];
  if ([(GameScene *)self shouldReduceParticles])
  {
    v21 = 100.0;
  }

  else
  {
    v21 = 200.0;
  }

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_4C94;
  v40[3] = &unk_C380;
  v22 = v13;
  v41 = v22;
  v42 = v21;
  v36 = objc_retainBlock(v40);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_4CA4;
  v38[3] = &unk_C2E0;
  v39 = v22;
  v23 = v22;
  v24 = objc_retainBlock(v38);
  v25 = [SKAction waitForDuration:1.04999995];
  v43[0] = v25;
  v26 = [SKAction runBlock:v36];
  v43[1] = v26;
  v27 = [SKAction waitForDuration:1.5];
  v43[2] = v27;
  v28 = [SKAction runBlock:v24];
  v43[3] = v28;
  [v23 particleLifetime];
  v30 = v29;
  [v23 particleLifetimeRange];
  v32 = [SKAction waitForDuration:v30 + v31];
  v43[4] = v32;
  v33 = +[SKAction removeFromParent];
  v43[5] = v33;
  v34 = [NSArray arrayWithObjects:v43 count:6];
  v35 = [SKAction sequence:v34];

  [v23 setPosition:{x, y}];
  [v23 setScale:scaleCopy];
  [(GameScene *)selfCopy addChild:v23];
  [v23 runAction:v35];
}

- (void)runTrailParticleEmitter:(CGPoint)emitter scale:(float)scale
{
  y = emitter.y;
  x = emitter.x;
  v8 = [(SKEmitterNode *)self->_trailParticleEmitter copy];
  [v8 setParticleBlendMode:1];
  [v8 setScale:scale];
  [(GameScene *)self addChild:v8];
  type1FireworkTrailCount = self->_type1FireworkTrailCount;
  if (type1FireworkTrailCount < 1)
  {
    v26 = 0.0;
  }

  else
  {
    v10 = type1FireworkTrailCount;
    v11 = 6.28318531 / type1FireworkTrailCount;
    v31 = v11;
    v12 = 0.0;
    v13 = 1;
    v14 = 0.0;
    do
    {
      v15 = (v12 * v11) + (drand48() + -0.5) * v31;
      *&v16 = (drand48() * 0.005 + 0.01) * 10.0;
      *&v17 = v15;
      [(GameScene *)self launchTrailAt:v8 angle:x speed:y group:v17, v16];
      if (v14 < v18)
      {
        v14 = v18;
      }

      v12 = v13++;
    }

    while (v12 < v10);
    v19 = 1;
    do
    {
      v20 = drand48();
      v21 = (v20 + v20) * 3.14159265;
      *&v22 = (drand48() * 0.008 + 0.0001) * 10.0;
      *&v23 = v21;
      [(GameScene *)self launchTrailAt:v8 angle:x speed:y group:v23, v22];
      if (v14 < v24)
      {
        v14 = v24;
      }

      v25 = v19++;
    }

    while (v25 < v10);
    v26 = v14;
  }

  v27 = [SKAction waitForDuration:v26, *&v31];
  v32[0] = v27;
  v28 = +[SKAction removeFromParent];
  v32[1] = v28;
  v29 = [NSArray arrayWithObjects:v32 count:2];
  v30 = [SKAction sequence:v29];
  [v8 runAction:v30];
}

- (float)launchTrailAt:(CGPoint)at angle:(float)angle speed:(float)speed group:(id)group
{
  y = at.y;
  x = at.x;
  groupCopy = group;
  v11 = [(SKNode *)self->_trailContainer copy];
  v51 = groupCopy;
  subEmitterNode = [groupCopy subEmitterNode];
  [v11 addChild:subEmitterNode];
  [v51 addChild:v11];
  [v51 xScale];
  v14 = v13;
  [v51 xScale];
  [v11 setScale:1.0 / (v14 * v15)];
  v16 = __sincosf_stret(angle);
  [subEmitterNode setPosition:{x, y}];
  [subEmitterNode setTargetNode:self];
  v43 = drand48();
  v47 = drand48();
  [subEmitterNode particleLifetime];
  v42 = v17;
  [subEmitterNode particleScale];
  v19 = v18;
  [subEmitterNode particleScale];
  v21 = v20;
  [subEmitterNode particleBirthRate];
  v23 = v22;
  [subEmitterNode particleBirthRate];
  v25 = v24;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = drand48() > 0.25;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_54D4;
  v67[3] = &unk_C3A8;
  v69 = v73;
  v26 = v11;
  v68 = v26;
  cosval = v16.__cosval;
  sinval = v16.__sinval;
  speedCopy = speed;
  v46 = objc_retainBlock(v67);
  *&y = v47 * 0.2 + 1.28;
  *&x = v19;
  *&v19 = v21 * 0.6;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_5544;
  v58[3] = &unk_C3D0;
  v62 = LODWORD(y);
  v28 = subEmitterNode;
  v63 = LODWORD(x);
  v64 = *&v19;
  v27 = v23;
  v65 = v27;
  *&v21 = v25 * 0.2;
  v66 = LODWORD(v21);
  v59 = v28;
  v61 = v75;
  v44 = v26;
  v60 = v44;
  v50 = objc_retainBlock(v58);
  v29 = (2.0 - *&y) * 2.2;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_5724;
  v54[3] = &unk_C3F8;
  v56 = v29;
  v30 = v28;
  v55 = v30;
  v57 = LODWORD(v19);
  v48 = objc_retainBlock(v54);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_5750;
  v52[3] = &unk_C2E0;
  v45 = v30;
  v53 = v45;
  v31 = objc_retainBlock(v52);
  *&x = v43 * 0.005 + v43 * 0.005;
  v32 = [SKAction waitForDuration:*&x];
  v77[0] = v32;
  v33 = [SKAction runBlock:v46];
  v77[1] = v33;
  v34 = [SKAction customActionWithDuration:v50 actionBlock:*&y];
  v77[2] = v34;
  v35 = [SKAction customActionWithDuration:v48 actionBlock:v29];
  v77[3] = v35;
  v36 = [SKAction runBlock:v31];
  v77[4] = v36;
  [v45 particleLifetime];
  v37 = [SKAction waitForDuration:?];
  v77[5] = v37;
  v38 = +[SKAction removeFromParent];
  v77[6] = v38;
  v39 = [NSArray arrayWithObjects:v77 count:7];
  v40 = [SKAction sequence:v39];
  [v44 runAction:v40];

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v75, 8);

  return (v42 + ((*&x + *&y) + v29)) * 1.2;
}

@end