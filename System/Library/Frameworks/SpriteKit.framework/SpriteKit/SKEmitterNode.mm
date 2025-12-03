@interface SKEmitterNode
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)Mutable;
- (BOOL)isEqualToNode:(id)node;
- (CGPoint)particlePosition;
- (CGSize)particleSize;
- (CGVector)particlePositionRange;
- (SKAction)particleAction;
- (SKAttributeValue)valueForAttributeNamed:(NSString *)key;
- (SKEmitterNode)init;
- (SKEmitterNode)initWithCoder:(id)coder;
- (SKEmitterNode)initWithMinimumParticleCapacity:(unint64_t)capacity;
- (SKEmitterNode)initWithMinimumParticleCapacity:(unint64_t)capacity minimumPositionBufferCapacity:(unint64_t)bufferCapacity;
- (SKNode)targetNode;
- (UIColor)particleColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)subEmitterNode;
- (void)_didMakeBackingNode;
- (void)advanceSimulationTime:(NSTimeInterval)sec;
- (void)copyParticlePropertiesToNode:(id)node;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDensityBased:(BOOL)based;
- (void)setFieldBitMask:(uint32_t)fieldBitMask;
- (void)setFieldInfluenceSequence:(id)sequence;
- (void)setParticleAction:(SKAction *)particleAction;
- (void)setParticleAlphaSequence:(SKKeyframeSequence *)particleAlphaSequence;
- (void)setParticleBirthRate:(CGFloat)particleBirthRate;
- (void)setParticleBlendMode:(SKBlendMode)particleBlendMode;
- (void)setParticleColor:(UIColor *)particleColor;
- (void)setParticleColorBlendFactorSequence:(SKKeyframeSequence *)particleColorBlendFactorSequence;
- (void)setParticleColorSequence:(SKKeyframeSequence *)particleColorSequence;
- (void)setParticleLifetime:(CGFloat)particleLifetime;
- (void)setParticleLifetimeRange:(CGFloat)particleLifetimeRange;
- (void)setParticlePosition:(CGPoint)particlePosition;
- (void)setParticlePositionRange:(CGVector)particlePositionRange;
- (void)setParticleRotationSequence:(id)sequence;
- (void)setParticleScaleSequence:(SKKeyframeSequence *)particleScaleSequence;
- (void)setParticleSpeedSequence:(id)sequence;
- (void)setParticleTexture:(SKTexture *)particleTexture;
- (void)setParticleZPosition:(CGFloat)particleZPosition;
- (void)setParticleZPositionRange:(CGFloat)particleZPositionRange;
- (void)setParticleZPositionSpeed:(CGFloat)particleZPositionSpeed;
- (void)setShader:(SKShader *)shader;
- (void)setTargetNode:(SKNode *)targetNode;
- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key;
- (void)setWantsNewParticles:(BOOL)particles;
- (void)setZPosition:(double)position;
@end

@implementation SKEmitterNode

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKEmitterNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcEmitterNode = [(SKNode *)self _backingNode];
}

- (id)subEmitterNode
{
  v3 = +[(SKNode *)SKEmitterNode];
  if (v3)
  {
    [(SKEmitterNode *)self copyParticlePropertiesToNode:v3];
    SKCEmitterNode::addSubEmitterNode(self->_skcEmitterNode, v3[18]);
  }

  return v3;
}

- (void)setFieldInfluenceSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = *(self->_skcEmitterNode + 83);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 83) = 0;
  }

  if (sequenceCopy)
  {
    [sequenceCopy count];
    operator new();
  }

  fieldInfluenceSequence = self->_fieldInfluenceSequence;
  self->_fieldInfluenceSequence = 0;
}

- (void)setParticleSpeedSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = *(self->_skcEmitterNode + 84);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 84) = 0;
  }

  if (sequenceCopy)
  {
    [sequenceCopy count];
    operator new();
  }

  particleSpeedSequence = self->_particleSpeedSequence;
  self->_particleSpeedSequence = 0;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = nodeCopy;
      skcEmitterNode = v5->_skcEmitterNode;
      v162.receiver = self;
      v162.super_class = SKEmitterNode;
      if (![(SKNode *)&v162 isEqualToNode:v5]|| ([(SKEmitterNode *)self particleBirthRate], v8 = v7, [(SKEmitterNode *)v5 particleBirthRate], v9 = v8, *&v10 = v10, (COERCE_UNSIGNED_INT(v9 - *&v10) & 0x60000000) != 0) || (v11 = [(SKEmitterNode *)self numParticlesToEmit], v11 != [(SKEmitterNode *)v5 numParticlesToEmit]))
      {
        v22 = 0;
        goto LABEL_14;
      }

      targetNode = [(SKEmitterNode *)self targetNode];
      targetNode2 = [(SKEmitterNode *)v5 targetNode];
      if (targetNode == targetNode2)
      {
        [(SKEmitterNode *)self particleLifetime];
        v15 = v14;
        [(SKEmitterNode *)v5 particleLifetime];
        v16 = v15;
        *&v17 = v17;
        if ((COERCE_UNSIGNED_INT(v16 - *&v17) & 0x60000000) == 0)
        {
          [(SKEmitterNode *)self particleLifetimeRange];
          v19 = v18;
          [(SKEmitterNode *)v5 particleLifetimeRange];
          v20 = v19;
          *&v21 = v21;
          if ((COERCE_UNSIGNED_INT(v20 - *&v21) & 0x60000000) == 0)
          {
            [(SKEmitterNode *)self particlePosition];
            v25 = v24;
            v27 = v26;
            [(SKEmitterNode *)v5 particlePosition];
            v22 = 0;
            if (v25 != v29 || v27 != v28)
            {
              goto LABEL_10;
            }

            [(SKEmitterNode *)self particlePositionRange];
            v31 = v30;
            [(SKEmitterNode *)v5 particlePositionRange];
            v32 = v31;
            *&v33 = v33;
            if ((COERCE_UNSIGNED_INT(v32 - *&v33) & 0x60000000) == 0)
            {
              [(SKEmitterNode *)self particlePositionRange];
              v35 = v34;
              [(SKEmitterNode *)v5 particlePositionRange];
              v36 = v35;
              *&v37 = v37;
              if ((COERCE_UNSIGNED_INT(v36 - *&v37) & 0x60000000) == 0)
              {
                [(SKEmitterNode *)self particleZPosition];
                v39 = v38;
                [(SKEmitterNode *)v5 particleZPosition];
                v40 = v39;
                *&v41 = v41;
                if ((COERCE_UNSIGNED_INT(v40 - *&v41) & 0x60000000) == 0 && (COERCE_UNSIGNED_INT(*(self->_skcEmitterNode + 189) - skcEmitterNode[189]) & 0x60000000) == 0)
                {
                  [(SKEmitterNode *)self particleSpeed];
                  v43 = v42;
                  [(SKEmitterNode *)v5 particleSpeed];
                  v44 = v43;
                  *&v45 = v45;
                  if ((COERCE_UNSIGNED_INT(v44 - *&v45) & 0x60000000) == 0)
                  {
                    [(SKEmitterNode *)self particleSpeedRange];
                    v47 = v46;
                    [(SKEmitterNode *)v5 particleSpeedRange];
                    v48 = v47;
                    *&v49 = v49;
                    if ((COERCE_UNSIGNED_INT(v48 - *&v49) & 0x60000000) == 0)
                    {
                      [(SKEmitterNode *)self emissionAngle];
                      v51 = v50;
                      [(SKEmitterNode *)v5 emissionAngle];
                      v52 = v51;
                      *&v53 = v53;
                      if ((COERCE_UNSIGNED_INT(v52 - *&v53) & 0x60000000) == 0)
                      {
                        [(SKEmitterNode *)self emissionAngleRange];
                        v55 = v54;
                        [(SKEmitterNode *)v5 emissionAngleRange];
                        v56 = v55;
                        *&v57 = v57;
                        if ((COERCE_UNSIGNED_INT(v56 - *&v57) & 0x60000000) == 0)
                        {
                          [(SKEmitterNode *)self xAcceleration];
                          v59 = v58;
                          [(SKEmitterNode *)v5 xAcceleration];
                          v60 = v59;
                          *&v61 = v61;
                          if ((COERCE_UNSIGNED_INT(v60 - *&v61) & 0x60000000) == 0)
                          {
                            [(SKEmitterNode *)self yAcceleration];
                            v63 = v62;
                            [(SKEmitterNode *)v5 yAcceleration];
                            v64 = v63;
                            *&v65 = v65;
                            if ((COERCE_UNSIGNED_INT(v64 - *&v65) & 0x60000000) == 0)
                            {
                              [(SKEmitterNode *)self particleRotation];
                              v67 = v66;
                              [(SKEmitterNode *)v5 particleRotation];
                              v68 = v67;
                              *&v69 = v69;
                              if ((COERCE_UNSIGNED_INT(v68 - *&v69) & 0x60000000) == 0)
                              {
                                [(SKEmitterNode *)self particleRotationRange];
                                v71 = v70;
                                [(SKEmitterNode *)v5 particleRotationRange];
                                v72 = v71;
                                *&v73 = v73;
                                if ((COERCE_UNSIGNED_INT(v72 - *&v73) & 0x60000000) == 0)
                                {
                                  [(SKEmitterNode *)self particleRotationSpeed];
                                  v75 = v74;
                                  [(SKEmitterNode *)v5 particleRotationSpeed];
                                  v76 = v75;
                                  *&v77 = v77;
                                  if ((COERCE_UNSIGNED_INT(v76 - *&v77) & 0x60000000) == 0)
                                  {
                                    particleTexture = [(SKEmitterNode *)self particleTexture];
                                    imageNameOrPath = [particleTexture imageNameOrPath];
                                    particleTexture2 = [(SKEmitterNode *)v5 particleTexture];
                                    imageNameOrPath2 = [particleTexture2 imageNameOrPath];
                                    if (![imageNameOrPath isEqualToString:imageNameOrPath2] || (-[SKEmitterNode particleSize](self, "particleSize"), v83 = v82, -[SKEmitterNode particleSize](v5, "particleSize"), v84 = v83, *&v85 = v85, (COERCE_UNSIGNED_INT(v84 - *&v85) & 0x60000000) != 0) || (-[SKEmitterNode particleSize](self, "particleSize"), v87 = v86, -[SKEmitterNode particleSize](v5, "particleSize"), v88 = v87, *&v89 = v89, (COERCE_UNSIGNED_INT(v88 - *&v89) & 0x60000000) != 0))
                                    {
                                      v22 = 0;
                                    }

                                    else
                                    {
                                      particleColorSequence = [(SKEmitterNode *)self particleColorSequence];
                                      v90 = [particleColorSequence hash];
                                      particleColorSequence2 = [(SKEmitterNode *)v5 particleColorSequence];
                                      if (v90 == [particleColorSequence2 hash])
                                      {
                                        particleColor = [(SKEmitterNode *)self particleColor];
                                        v91 = [particleColor hash];
                                        particleColor2 = [(SKEmitterNode *)v5 particleColor];
                                        if (v91 != [particleColor2 hash] || (-[SKEmitterNode particleColorAlphaRange](self, "particleColorAlphaRange"), v93 = v92, -[SKEmitterNode particleColorAlphaRange](v5, "particleColorAlphaRange"), v94 = v93, *&v95 = v95, (COERCE_UNSIGNED_INT(v94 - *&v95) & 0x60000000) != 0) || (-[SKEmitterNode particleColorBlueRange](self, "particleColorBlueRange"), v97 = v96, -[SKEmitterNode particleColorBlueRange](v5, "particleColorBlueRange"), v98 = v97, *&v99 = v99, (COERCE_UNSIGNED_INT(v98 - *&v99) & 0x60000000) != 0) || (-[SKEmitterNode particleColorGreenRange](self, "particleColorGreenRange"), v101 = v100, -[SKEmitterNode particleColorGreenRange](v5, "particleColorGreenRange"), v102 = v101, *&v103 = v103, (COERCE_UNSIGNED_INT(v102 - *&v103) & 0x60000000) != 0) || (-[SKEmitterNode particleColorRedRange](self, "particleColorRedRange"), v105 = v104, -[SKEmitterNode particleColorRedRange](v5, "particleColorRedRange"), v106 = v105, *&v107 = v107, (COERCE_UNSIGNED_INT(v106 - *&v107) & 0x60000000) != 0) || (-[SKEmitterNode particleColorAlphaSpeed](self, "particleColorAlphaSpeed"), v109 = v108, -[SKEmitterNode particleColorAlphaSpeed](v5, "particleColorAlphaSpeed"), v110 = v109, *&v111 = v111, (COERCE_UNSIGNED_INT(v110 - *&v111) & 0x60000000) != 0) || (-[SKEmitterNode particleColorBlueSpeed](self, "particleColorBlueSpeed"), v113 = v112, -[SKEmitterNode particleColorBlueSpeed](v5, "particleColorBlueSpeed"), v114 = v113, *&v115 = v115, (COERCE_UNSIGNED_INT(v114 - *&v115) & 0x60000000) != 0) || (-[SKEmitterNode particleColorGreenSpeed](self, "particleColorGreenSpeed"), v117 = v116, -[SKEmitterNode particleColorGreenSpeed](v5, "particleColorGreenSpeed"), v118 = v117, *&v119 = v119, (COERCE_UNSIGNED_INT(v118 - *&v119) & 0x60000000) != 0) || (-[SKEmitterNode particleColorRedSpeed](self, "particleColorRedSpeed"), v121 = v120, -[SKEmitterNode particleColorRedSpeed](v5, "particleColorRedSpeed"), v122 = v121, *&v123 = v123, (COERCE_UNSIGNED_INT(v122 - *&v123) & 0x60000000) != 0))
                                        {
                                          v22 = 0;
                                        }

                                        else
                                        {
                                          particleColorBlendFactorSequence = [(SKEmitterNode *)self particleColorBlendFactorSequence];
                                          v124 = [particleColorBlendFactorSequence hash];
                                          particleColorBlendFactorSequence2 = [(SKEmitterNode *)v5 particleColorBlendFactorSequence];
                                          if (v124 != [particleColorBlendFactorSequence2 hash] || (-[SKEmitterNode particleColorBlendFactor](self, "particleColorBlendFactor"), v126 = v125, -[SKEmitterNode particleColorBlendFactor](v5, "particleColorBlendFactor"), v127 = v126, *&v128 = v128, (COERCE_UNSIGNED_INT(v127 - *&v128) & 0x60000000) != 0) || (-[SKEmitterNode particleColorBlendFactorRange](self, "particleColorBlendFactorRange"), v130 = v129, -[SKEmitterNode particleColorBlendFactorRange](v5, "particleColorBlendFactorRange"), v131 = v130, *&v132 = v132, (COERCE_UNSIGNED_INT(v131 - *&v132) & 0x60000000) != 0) || (-[SKEmitterNode particleColorBlendFactorSpeed](self, "particleColorBlendFactorSpeed"), v134 = v133, -[SKEmitterNode particleColorBlendFactorSpeed](v5, "particleColorBlendFactorSpeed"), v135 = v134, *&v136 = v136, (COERCE_UNSIGNED_INT(v135 - *&v136) & 0x60000000) != 0) || (v137 = -[SKEmitterNode particleBlendMode](self, "particleBlendMode"), v137 != -[SKEmitterNode particleBlendMode](v5, "particleBlendMode")))
                                          {
                                            v22 = 0;
                                          }

                                          else
                                          {
                                            particleAlphaSequence = [(SKEmitterNode *)self particleAlphaSequence];
                                            v138 = [particleAlphaSequence hash];
                                            particleAlphaSequence2 = [(SKEmitterNode *)v5 particleAlphaSequence];
                                            if (v138 != [particleAlphaSequence2 hash] || (-[SKEmitterNode particleAlpha](self, "particleAlpha"), v140 = v139, -[SKEmitterNode particleAlpha](v5, "particleAlpha"), v141 = v140, *&v142 = v142, (COERCE_UNSIGNED_INT(v141 - *&v142) & 0x60000000) != 0) || (-[SKEmitterNode particleAlphaRange](self, "particleAlphaRange"), v144 = v143, -[SKEmitterNode particleAlphaRange](v5, "particleAlphaRange"), v145 = v144, *&v146 = v146, (COERCE_UNSIGNED_INT(v145 - *&v146) & 0x60000000) != 0) || (-[SKEmitterNode particleAlphaSpeed](self, "particleAlphaSpeed"), v148 = v147, -[SKEmitterNode particleAlphaSpeed](v5, "particleAlphaSpeed"), v149 = v148, *&v150 = v150, (COERCE_UNSIGNED_INT(v149 - *&v150) & 0x60000000) != 0))
                                            {
                                              v22 = 0;
                                            }

                                            else
                                            {
                                              particleSpeedSequence = [(SKEmitterNode *)self particleSpeedSequence];
                                              v151 = [particleSpeedSequence hash];
                                              particleSpeedSequence2 = [(SKEmitterNode *)v5 particleSpeedSequence];
                                              v22 = v151 == [particleSpeedSequence2 hash];
                                            }
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v22 = 0;
                                      }
                                    }

                                    goto LABEL_10;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v22 = 0;
LABEL_10:

LABEL_14:
      goto LABEL_15;
    }

    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(SKNode *)self name];
  particleTexture = [(SKEmitterNode *)self particleTexture];
  [(SKNode *)self position];
  v6 = NSStringFromCGPoint(v11);
  [(SKNode *)self calculateAccumulatedFrame];
  v7 = NSStringFromCGRect(v12);
  v8 = [v3 stringWithFormat:@"<SKEmitterNode> name:'%@' particleTexture:%@ position:%@ accumulatedFrame:%@", name, particleTexture, v6, v7];

  return v8;
}

- (void)setTargetNode:(SKNode *)targetNode
{
  v7 = targetNode;
  v4 = objc_storeWeak(&self->_target, v7);
  skcEmitterNode = self->_skcEmitterNode;
  v6 = v4;
  SKCEmitterNode::setTargetNode(skcEmitterNode, v7);
}

- (void)setParticleAlphaSequence:(SKKeyframeSequence *)particleAlphaSequence
{
  v4 = particleAlphaSequence;
  v5 = *(self->_skcEmitterNode + 80);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 80) = 0;
  }

  if (v4)
  {
    [(SKKeyframeSequence *)v4 count];
    operator new();
  }

  alphaSequence = self->_alphaSequence;
  self->_alphaSequence = 0;
}

- (void)setParticleColorBlendFactorSequence:(SKKeyframeSequence *)particleColorBlendFactorSequence
{
  v4 = particleColorBlendFactorSequence;
  v5 = *(self->_skcEmitterNode + 79);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 79) = 0;
  }

  if (v4)
  {
    [(SKKeyframeSequence *)v4 count];
    operator new();
  }

  colorBlendSequence = self->_colorBlendSequence;
  self->_colorBlendSequence = 0;
}

- (void)setParticleColorSequence:(SKKeyframeSequence *)particleColorSequence
{
  v4 = particleColorSequence;
  v5 = *(self->_skcEmitterNode + 78);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 78) = 0;
  }

  if (v4)
  {
    [(SKKeyframeSequence *)v4 count];
    operator new();
  }

  colorSequence = self->_colorSequence;
  self->_colorSequence = 0;
}

- (void)setParticleScaleSequence:(SKKeyframeSequence *)particleScaleSequence
{
  v4 = particleScaleSequence;
  v5 = *(self->_skcEmitterNode + 82);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 82) = 0;
  }

  if (v4)
  {
    [(SKKeyframeSequence *)v4 count];
    operator new();
  }

  scaleSequence = self->_scaleSequence;
  self->_scaleSequence = 0;
}

- (void)setParticleRotationSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = *(self->_skcEmitterNode + 81);
  if (v5)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v5);
    MEMORY[0x21CF0A160]();
    *(self->_skcEmitterNode + 81) = 0;
  }

  if (sequenceCopy)
  {
    [sequenceCopy count];
    operator new();
  }

  rotationSequence = self->_rotationSequence;
  self->_rotationSequence = 0;
}

- (void)setWantsNewParticles:(BOOL)particles
{
  skcEmitterNode = self->_skcEmitterNode;
  if (skcEmitterNode[561] != particles)
  {
    skcEmitterNode[561] = particles;
    skcEmitterNode[560] = 1;
  }
}

- (void)setDensityBased:(BOOL)based
{
  skcEmitterNode = self->_skcEmitterNode;
  *(skcEmitterNode + 616) = based;
  SKCNode::recomputeFlags(skcEmitterNode, 1);
}

- (SKNode)targetNode
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)setParticleZPositionSpeed:(CGFloat)particleZPositionSpeed
{
  v3 = particleZPositionSpeed;
  skcEmitterNode = self->_skcEmitterNode;
  skcEmitterNode[190] = v3;
  *(skcEmitterNode + 560) = 1;
}

- (CGSize)particleSize
{
  skcEmitterNode = self->_skcEmitterNode;
  v3 = skcEmitterNode[92];
  v4 = skcEmitterNode[93];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setZPosition:(double)position
{
  v4.receiver = self;
  v4.super_class = SKEmitterNode;
  [(SKNode *)&v4 setZPosition:position];
  SKCEmitterNode::computeZPostion(self->_skcEmitterNode);
}

- (void)setParticleZPosition:(CGFloat)particleZPosition
{
  v3 = particleZPosition;
  skcEmitterNode = self->_skcEmitterNode;
  skcEmitterNode[188] = v3;
  SKCEmitterNode::computeZPostion(skcEmitterNode);
}

- (void)setParticleZPositionRange:(CGFloat)particleZPositionRange
{
  v3 = particleZPositionRange;
  skcEmitterNode = self->_skcEmitterNode;
  skcEmitterNode[189] = v3;
  *(skcEmitterNode + 560) = 1;
}

- (void)setParticleColor:(UIColor *)particleColor
{
  v9 = particleColor;
  [(UIColor *)v9 componentRGBA];
  skcEmitterNode = self->_skcEmitterNode;
  skcEmitterNode[196] = v5;
  skcEmitterNode[197] = v6;
  skcEmitterNode[198] = v7;
  skcEmitterNode[199] = v8;
}

- (UIColor)particleColor
{
  skcEmitterNode = self->_skcEmitterNode;
  LODWORD(v2) = skcEmitterNode[196];
  LODWORD(v3) = skcEmitterNode[197];
  LODWORD(v4) = skcEmitterNode[198];
  LODWORD(v5) = skcEmitterNode[199];
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{v2, v3, v4, v5}];
}

- (void)setParticlePosition:(CGPoint)particlePosition
{
  x = particlePosition.x;
  skcEmitterNode = self->_skcEmitterNode;
  y = particlePosition.y;
  skcEmitterNode[218] = x;
  skcEmitterNode[219] = y;
}

- (CGPoint)particlePosition
{
  skcEmitterNode = self->_skcEmitterNode;
  v3 = skcEmitterNode[218];
  v4 = skcEmitterNode[219];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setParticlePositionRange:(CGVector)particlePositionRange
{
  dx = particlePositionRange.dx;
  skcEmitterNode = self->_skcEmitterNode;
  dy = particlePositionRange.dy;
  skcEmitterNode[220] = dx;
  skcEmitterNode[221] = dy;
}

- (CGVector)particlePositionRange
{
  skcEmitterNode = self->_skcEmitterNode;
  v3 = skcEmitterNode[220];
  v4 = skcEmitterNode[221];
  result.dy = v4;
  result.dx = v3;
  return result;
}

- (void)setParticleBirthRate:(CGFloat)particleBirthRate
{
  v4 = particleBirthRate;
  SKCEmitterNode::setBirthRate(self->_skcEmitterNode, v4);
  skcEmitterNode = self->_skcEmitterNode;

  SKCNode::recomputeFlags(skcEmitterNode, 1);
}

- (void)setParticleLifetime:(CGFloat)particleLifetime
{
  v3 = particleLifetime;
  skcEmitterNode = self->_skcEmitterNode;
  skcEmitterNode[229] = v3;
  *(skcEmitterNode + 175) = vcvtps_s32_f32(((skcEmitterNode[228] * (v3 + (skcEmitterNode[230] * 0.5))) * 1.04) + 2.0);
}

- (void)setParticleLifetimeRange:(CGFloat)particleLifetimeRange
{
  v3 = particleLifetimeRange;
  skcEmitterNode = self->_skcEmitterNode;
  skcEmitterNode[230] = v3;
  *(skcEmitterNode + 175) = vcvtps_s32_f32(((skcEmitterNode[228] * (skcEmitterNode[229] + (v3 * 0.5))) * 1.04) + 2.0);
}

- (void)setParticleTexture:(SKTexture *)particleTexture
{
  v6 = particleTexture;
  objc_storeStrong(&self->_particleTexture, particleTexture);
  skcEmitterNode = self->_skcEmitterNode;
  if (skcEmitterNode[120] != v6)
  {
    objc_storeStrong(skcEmitterNode + 120, particleTexture);
    objc_storeStrong((*(self->_skcEmitterNode + 74) + 568), particleTexture);
  }
}

- (void)setParticleBlendMode:(SKBlendMode)particleBlendMode
{
  skcEmitterNode = self->_skcEmitterNode;
  if (*(skcEmitterNode + 121) != particleBlendMode)
  {
    *(skcEmitterNode + 121) = particleBlendMode;
  }

  SKCNode::setBlendMode(*(skcEmitterNode + 74), particleBlendMode);
}

- (SKAction)particleAction
{
  v2 = [*(self->_skcEmitterNode + 72) copy];

  return v2;
}

- (void)setParticleAction:(SKAction *)particleAction
{
  v7 = particleAction;
  v4 = [(SKAction *)v7 copy];
  skcEmitterNode = self->_skcEmitterNode;
  v6 = skcEmitterNode[72];
  skcEmitterNode[72] = v4;

  *(self->_skcEmitterNode + 560) = 1;
}

- (void)setFieldBitMask:(uint32_t)fieldBitMask
{
  skcEmitterNode = self->_skcEmitterNode;
  *(skcEmitterNode + 244) = fieldBitMask;
  SKCNode::recomputeFlags(skcEmitterNode, 1);
}

- (SKEmitterNode)init
{
  v5.receiver = self;
  v5.super_class = SKEmitterNode;
  v2 = [(SKNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKEmitterNode *)v2 commonInit];
    [(SKEmitterNode *)v3 setTargetNode:0];
  }

  return v3;
}

- (SKEmitterNode)initWithMinimumParticleCapacity:(unint64_t)capacity
{
  capacityCopy = capacity;
  v8.receiver = self;
  v8.super_class = SKEmitterNode;
  v4 = [(SKNode *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(SKEmitterNode *)v4 commonInit];
    [(SKEmitterNode *)v5 setTargetNode:0];
    skcEmitterNode = v5->_skcEmitterNode;
    skcEmitterNode[245] = capacityCopy;
    skcEmitterNode[246] = 4 * capacityCopy;
  }

  return v5;
}

- (SKEmitterNode)initWithMinimumParticleCapacity:(unint64_t)capacity minimumPositionBufferCapacity:(unint64_t)bufferCapacity
{
  bufferCapacityCopy = bufferCapacity;
  capacityCopy = capacity;
  v10.receiver = self;
  v10.super_class = SKEmitterNode;
  v6 = [(SKNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(SKEmitterNode *)v6 commonInit];
    [(SKEmitterNode *)v7 setTargetNode:0];
    skcEmitterNode = v7->_skcEmitterNode;
    skcEmitterNode[245] = capacityCopy;
    skcEmitterNode[246] = bufferCapacityCopy;
  }

  return v7;
}

- (SKEmitterNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v76.receiver = self;
  v76.super_class = SKEmitterNode;
  v5 = [(SKNode *)&v76 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(SKEmitterNode *)v5 commonInit];
    skcEmitterNode = v6->_skcEmitterNode;
    [coderCopy decodeDoubleForKey:@"_startColorMix"];
    *&v8 = v8;
    skcEmitterNode[208] = *&v8;
    [coderCopy decodeDoubleForKey:@"_startColorBlendVariance"];
    *&v9 = v9;
    skcEmitterNode[209] = *&v9;
    [coderCopy decodeDoubleForKey:@"_startColorR"];
    v11 = v10;
    [coderCopy decodeDoubleForKey:@"_startColorG"];
    v13 = v12;
    [coderCopy decodeDoubleForKey:@"_startColorB"];
    v15 = v14;
    [coderCopy decodeDoubleForKey:@"_startColorA"];
    v16 = v11;
    v17 = v13;
    v18 = v15;
    skcEmitterNode[196] = v16;
    skcEmitterNode[197] = v17;
    *&v19 = v19;
    skcEmitterNode[198] = v18;
    skcEmitterNode[199] = *&v19;
    [coderCopy decodeDoubleForKey:@"_startColorVarianceR"];
    v21 = v20;
    [coderCopy decodeDoubleForKey:@"_startColorVarianceG"];
    v23 = v22;
    [coderCopy decodeDoubleForKey:@"_startColorVarianceB"];
    v25 = v24;
    [coderCopy decodeDoubleForKey:@"_startColorVarianceA"];
    v26 = v21;
    v27 = v23;
    v28 = v25;
    *&v29 = v29;
    skcEmitterNode[200] = v26;
    skcEmitterNode[201] = v27;
    skcEmitterNode[202] = v28;
    skcEmitterNode[203] = *&v29;
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleTexture"];
    [(SKEmitterNode *)v6 setParticleTexture:v30];

    [coderCopy decodeCGPointForKey:@"_startPosition"];
    [(SKEmitterNode *)v6 setParticlePosition:?];
    [coderCopy decodeCGVectorForKey:@"_startPositionVariance"];
    [(SKEmitterNode *)v6 setParticlePositionRange:?];
    [coderCopy decodeDoubleForKey:@"_startZPosition"];
    *&v31 = v31;
    skcEmitterNode[188] = *&v31;
    [coderCopy decodeDoubleForKey:@"_startZPositionVariance"];
    *&v32 = v32;
    skcEmitterNode[189] = *&v32;
    [coderCopy decodeDoubleForKey:@"_lifetime"];
    *&v33 = v33;
    skcEmitterNode[229] = *&v33;
    [coderCopy decodeDoubleForKey:@"_lifetimeVariance"];
    *&v34 = v34;
    skcEmitterNode[230] = *&v34;
    [coderCopy decodeDoubleForKey:@"_startOpacity"];
    *&v35 = v35;
    skcEmitterNode[237] = *&v35;
    [coderCopy decodeDoubleForKey:@"_startOpacityVariance"];
    *&v36 = v36;
    skcEmitterNode[238] = *&v36;
    -[SKEmitterNode setParticleBlendMode:](v6, "setParticleBlendMode:", [coderCopy decodeIntForKey:@"_particleBlendMode"]);
    [coderCopy decodeDoubleForKey:@"_startRotation"];
    *&v37 = v37;
    skcEmitterNode[231] = *&v37;
    [coderCopy decodeDoubleForKey:@"_startRotationVariance"];
    *&v38 = v38;
    skcEmitterNode[232] = *&v38;
    [coderCopy decodeCGSizeForKey:@"_startSize"];
    *(skcEmitterNode + 92) = v39;
    *(skcEmitterNode + 93) = v40;
    [coderCopy decodeDoubleForKey:@"_startScale"];
    *&v41 = v41;
    skcEmitterNode[234] = *&v41;
    [coderCopy decodeDoubleForKey:@"_startScaleVariance"];
    *&v42 = v42;
    skcEmitterNode[235] = *&v42;
    [coderCopy decodeCGPointForKey:@"_acceleration"];
    *&v43 = v43;
    *&v44 = v44;
    skcEmitterNode[226] = *&v43;
    skcEmitterNode[227] = *&v44;
    [coderCopy decodeDoubleForKey:@"_colorSpeedR"];
    v46 = v45;
    [coderCopy decodeDoubleForKey:@"_colorSpeedG"];
    v48 = v47;
    [coderCopy decodeDoubleForKey:@"_colorSpeedB"];
    v50 = v49;
    [coderCopy decodeDoubleForKey:@"_colorSpeedA"];
    v51 = v46;
    v52 = v48;
    v53 = v50;
    skcEmitterNode[204] = v51;
    skcEmitterNode[205] = v52;
    *&v54 = v54;
    skcEmitterNode[206] = v53;
    skcEmitterNode[207] = *&v54;
    [coderCopy decodeDoubleForKey:@"_colorBlendSpeed"];
    *&v55 = v55;
    skcEmitterNode[210] = *&v55;
    [coderCopy decodeDoubleForKey:@"_rotationSpeed"];
    *&v56 = v56;
    skcEmitterNode[233] = *&v56;
    [coderCopy decodeDoubleForKey:@"_scaleSpeed"];
    *&v57 = v57;
    skcEmitterNode[236] = *&v57;
    [coderCopy decodeDoubleForKey:@"_opacitySpeed"];
    *&v58 = v58;
    skcEmitterNode[239] = *&v58;
    [coderCopy decodeDoubleForKey:@"_startSpeed"];
    *&v59 = v59;
    skcEmitterNode[222] = *&v59;
    [coderCopy decodeDoubleForKey:@"_startSpeedVariance"];
    *&v60 = v60;
    skcEmitterNode[223] = *&v60;
    [coderCopy decodeDoubleForKey:@"_emissionAngle"];
    *&v61 = v61;
    skcEmitterNode[224] = *&v61;
    [coderCopy decodeDoubleForKey:@"_emissionAngleVariance"];
    *&v62 = v62;
    skcEmitterNode[225] = *&v62;
    [coderCopy decodeDoubleForKey:@"_zPositionSpeed"];
    *&v63 = v63;
    skcEmitterNode[190] = *&v63;
    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_target"];
    [(SKEmitterNode *)v6 setTargetNode:v64];

    [coderCopy decodeDoubleForKey:@"_birthrate"];
    [(SKEmitterNode *)v6 setParticleBirthRate:?];
    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleAction"];
    [(SKEmitterNode *)v6 setParticleAction:v65];

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numParticlesToEmit"];
    -[SKEmitterNode setNumParticlesToEmit:](v6, "setNumParticlesToEmit:", [v66 unsignedIntegerValue]);

    [coderCopy decodeDoubleForKey:@"_emissionDistance"];
    [(SKEmitterNode *)v6 setEmissionDistance:?];
    [coderCopy decodeDoubleForKey:@"_emissionDistanceRange"];
    [(SKEmitterNode *)v6 setEmissionDistanceRange:?];
    -[SKEmitterNode setFieldBitMask:](v6, "setFieldBitMask:", [coderCopy decodeInt32ForKey:@"_fieldBitMask"]);
    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleAlphaSequence"];
    [(SKEmitterNode *)v6 setParticleAlphaSequence:v67];

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleColorSequence"];
    [(SKEmitterNode *)v6 setParticleColorSequence:v68];

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleColorBlendFactorSequence"];
    [(SKEmitterNode *)v6 setParticleColorBlendFactorSequence:v69];

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleScaleSequence"];
    [(SKEmitterNode *)v6 setParticleScaleSequence:v70];

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleRotationSequence"];
    [(SKEmitterNode *)v6 setParticleRotationSequence:v71];

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fieldInfluenceSequence"];
    [(SKEmitterNode *)v6 setFieldInfluenceSequence:v72];

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_particleSpeedSequence"];
    [(SKEmitterNode *)v6 setParticleSpeedSequence:v73];

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shader"];
    [(SKEmitterNode *)v6 setShader:v74];

    *(skcEmitterNode + 560) = 1;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SKEmitterNode;
  [(SKNode *)&v17 encodeWithCoder:coderCopy];
  skcEmitterNode = self->_skcEmitterNode;
  particleAction = [(SKEmitterNode *)self particleAction];
  [coderCopy encodeObject:particleAction forKey:@"_particleAction"];

  [coderCopy encodeDouble:@"_startColorMix" forKey:skcEmitterNode[208]];
  [coderCopy encodeDouble:@"_startColorBlendVariance" forKey:skcEmitterNode[209]];
  [coderCopy encodeDouble:@"_startColorR" forKey:skcEmitterNode[196]];
  [coderCopy encodeDouble:@"_startColorG" forKey:skcEmitterNode[197]];
  [coderCopy encodeDouble:@"_startColorB" forKey:skcEmitterNode[198]];
  [coderCopy encodeDouble:@"_startColorA" forKey:skcEmitterNode[199]];
  [coderCopy encodeDouble:@"_startColorVarianceR" forKey:skcEmitterNode[200]];
  [coderCopy encodeDouble:@"_startColorVarianceG" forKey:skcEmitterNode[201]];
  [coderCopy encodeDouble:@"_startColorVarianceB" forKey:skcEmitterNode[202]];
  [coderCopy encodeDouble:@"_startColorVarianceA" forKey:skcEmitterNode[203]];
  [coderCopy encodeDouble:@"_birthrate" forKey:skcEmitterNode[228]];
  [coderCopy encodeObject:*(skcEmitterNode + 120) forKey:@"_particleTexture"];
  [(SKEmitterNode *)self particlePosition];
  [coderCopy encodeCGPoint:@"_startPosition" forKey:?];
  [(SKEmitterNode *)self particlePositionRange];
  [coderCopy encodeCGVector:@"_startPositionVariance" forKey:?];
  [coderCopy encodeDouble:@"_startZPosition" forKey:skcEmitterNode[188]];
  [coderCopy encodeDouble:@"_startZPositionVariance" forKey:skcEmitterNode[189]];
  [coderCopy encodeDouble:@"_lifetime" forKey:skcEmitterNode[229]];
  [coderCopy encodeDouble:@"_lifetimeVariance" forKey:skcEmitterNode[230]];
  [coderCopy encodeDouble:@"_startOpacity" forKey:skcEmitterNode[237]];
  [coderCopy encodeDouble:@"_startOpacityVariance" forKey:skcEmitterNode[238]];
  [coderCopy encodeInteger:*(skcEmitterNode + 121) forKey:@"_particleBlendMode"];
  [coderCopy encodeDouble:@"_startRotation" forKey:skcEmitterNode[231]];
  [coderCopy encodeDouble:@"_startRotationVariance" forKey:skcEmitterNode[232]];
  [coderCopy encodeCGSize:@"_startSize" forKey:{*(skcEmitterNode + 92), *(skcEmitterNode + 93)}];
  [coderCopy encodeDouble:@"_startScale" forKey:skcEmitterNode[234]];
  [coderCopy encodeDouble:@"_startScaleVariance" forKey:skcEmitterNode[235]];
  [coderCopy encodeCGPoint:@"_acceleration" forKey:{skcEmitterNode[226], skcEmitterNode[227]}];
  [coderCopy encodeDouble:@"_colorSpeedR" forKey:skcEmitterNode[204]];
  [coderCopy encodeDouble:@"_colorSpeedG" forKey:skcEmitterNode[205]];
  [coderCopy encodeDouble:@"_colorSpeedB" forKey:skcEmitterNode[206]];
  [coderCopy encodeDouble:@"_colorSpeedA" forKey:skcEmitterNode[207]];
  [coderCopy encodeDouble:@"_colorBlendSpeed" forKey:skcEmitterNode[210]];
  [coderCopy encodeDouble:@"_rotationSpeed" forKey:skcEmitterNode[233]];
  [coderCopy encodeDouble:@"_scaleSpeed" forKey:skcEmitterNode[236]];
  [coderCopy encodeDouble:@"_opacitySpeed" forKey:skcEmitterNode[239]];
  [coderCopy encodeDouble:@"_startSpeed" forKey:skcEmitterNode[222]];
  [coderCopy encodeDouble:@"_startSpeedVariance" forKey:skcEmitterNode[223]];
  [coderCopy encodeDouble:@"_emissionAngle" forKey:skcEmitterNode[224]];
  [coderCopy encodeDouble:@"_emissionAngleVariance" forKey:skcEmitterNode[225]];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [coderCopy encodeObject:WeakRetained forKey:@"_target"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKEmitterNode numParticlesToEmit](self, "numParticlesToEmit")}];
  [coderCopy encodeObject:v8 forKey:@"_numParticlesToEmit"];

  [coderCopy encodeDouble:@"_zPositionSpeed" forKey:skcEmitterNode[190]];
  [(SKEmitterNode *)self emissionDistance];
  [coderCopy encodeDouble:@"_emissionDistance" forKey:?];
  [(SKEmitterNode *)self emissionDistanceRange];
  [coderCopy encodeDouble:@"_emissionDistanceRange" forKey:?];
  [coderCopy encodeInt32:-[SKEmitterNode fieldBitMask](self forKey:{"fieldBitMask"), @"_fieldBitMask"}];
  particleAlphaSequence = [(SKEmitterNode *)self particleAlphaSequence];
  [coderCopy encodeObject:particleAlphaSequence forKey:@"_particleAlphaSequence"];

  particleColorSequence = [(SKEmitterNode *)self particleColorSequence];
  [coderCopy encodeObject:particleColorSequence forKey:@"_particleColorSequence"];

  particleColorBlendFactorSequence = [(SKEmitterNode *)self particleColorBlendFactorSequence];
  [coderCopy encodeObject:particleColorBlendFactorSequence forKey:@"_particleColorBlendFactorSequence"];

  particleScaleSequence = [(SKEmitterNode *)self particleScaleSequence];
  [coderCopy encodeObject:particleScaleSequence forKey:@"_particleScaleSequence"];

  particleRotationSequence = [(SKEmitterNode *)self particleRotationSequence];
  [coderCopy encodeObject:particleRotationSequence forKey:@"_particleRotationSequence"];

  fieldInfluenceSequence = [(SKEmitterNode *)self fieldInfluenceSequence];
  [coderCopy encodeObject:fieldInfluenceSequence forKey:@"_fieldInfluenceSequence"];

  particleSpeedSequence = [(SKEmitterNode *)self particleSpeedSequence];
  [coderCopy encodeObject:particleSpeedSequence forKey:@"_particleSpeedSequence"];

  shader = [(SKEmitterNode *)self shader];
  [coderCopy encodeObject:shader forKey:@"_shader"];
}

- (void)copyParticlePropertiesToNode:(id)node
{
  nodeCopy = node;
  v4 = nodeCopy[18];
  particleColor = [(SKEmitterNode *)self particleColor];
  [nodeCopy setParticleColor:particleColor];

  [(SKEmitterNode *)self particleColorRedRange];
  [nodeCopy setParticleColorRedRange:?];
  [(SKEmitterNode *)self particleColorGreenRange];
  [nodeCopy setParticleColorGreenRange:?];
  [(SKEmitterNode *)self particleColorBlueRange];
  [nodeCopy setParticleColorBlueRange:?];
  [(SKEmitterNode *)self particleColorAlphaRange];
  [nodeCopy setParticleColorAlphaRange:?];
  [(SKEmitterNode *)self particleColorRedSpeed];
  [nodeCopy setParticleColorRedSpeed:?];
  [(SKEmitterNode *)self particleColorGreenSpeed];
  [nodeCopy setParticleColorGreenSpeed:?];
  [(SKEmitterNode *)self particleColorBlueSpeed];
  [nodeCopy setParticleColorBlueSpeed:?];
  [(SKEmitterNode *)self particleColorAlphaSpeed];
  [nodeCopy setParticleColorAlphaSpeed:?];
  [(SKEmitterNode *)self particleColorBlendFactor];
  [nodeCopy setParticleColorBlendFactor:?];
  [(SKEmitterNode *)self particleColorBlendFactorRange];
  [nodeCopy setParticleColorBlendFactorRange:?];
  [(SKEmitterNode *)self particleColorBlendFactorSpeed];
  [nodeCopy setParticleColorBlendFactorSpeed:?];
  [(SKEmitterNode *)self particlePosition];
  [nodeCopy setParticlePosition:?];
  [(SKEmitterNode *)self particlePositionRange];
  [nodeCopy setParticlePositionRange:?];
  [(SKEmitterNode *)self xAcceleration];
  [nodeCopy setXAcceleration:?];
  [(SKEmitterNode *)self yAcceleration];
  [nodeCopy setYAcceleration:?];
  [(SKEmitterNode *)self particleLifetime];
  [nodeCopy setParticleLifetime:?];
  [(SKEmitterNode *)self particleLifetimeRange];
  [nodeCopy setParticleLifetimeRange:?];
  [(SKEmitterNode *)self particleRotation];
  [nodeCopy setParticleRotation:?];
  [(SKEmitterNode *)self particleRotationRange];
  [nodeCopy setParticleRotationRange:?];
  [(SKEmitterNode *)self particleRotationSpeed];
  [nodeCopy setParticleRotationSpeed:?];
  [(SKEmitterNode *)self particleScale];
  [nodeCopy setParticleScale:?];
  [(SKEmitterNode *)self particleScaleRange];
  [nodeCopy setParticleScaleRange:?];
  [(SKEmitterNode *)self particleScaleSpeed];
  [nodeCopy setParticleScaleSpeed:?];
  [(SKEmitterNode *)self particleAlpha];
  [nodeCopy setParticleAlpha:?];
  [(SKEmitterNode *)self particleAlphaRange];
  [nodeCopy setParticleAlphaRange:?];
  [(SKEmitterNode *)self particleAlphaSpeed];
  [nodeCopy setParticleAlphaSpeed:?];
  particleTexture = [(SKEmitterNode *)self particleTexture];
  [nodeCopy setParticleTexture:particleTexture];

  [nodeCopy setParticleBlendMode:{-[SKEmitterNode particleBlendMode](self, "particleBlendMode")}];
  [(SKEmitterNode *)self particleSpeed];
  [nodeCopy setParticleSpeed:?];
  [(SKEmitterNode *)self particleSpeedRange];
  [nodeCopy setParticleSpeedRange:?];
  [(SKEmitterNode *)self emissionAngle];
  [nodeCopy setEmissionAngle:?];
  [(SKEmitterNode *)self emissionAngleRange];
  [nodeCopy setEmissionAngleRange:?];
  targetNode = [(SKEmitterNode *)self targetNode];
  [nodeCopy setTargetNode:targetNode];

  [(SKEmitterNode *)self particleZPosition];
  [nodeCopy setParticleZPosition:?];
  skcEmitterNode = self->_skcEmitterNode;
  *(v4 + 756) = skcEmitterNode[189];
  *(v4 + 760) = skcEmitterNode[190];
  particleAction = [(SKEmitterNode *)self particleAction];
  [nodeCopy setParticleAction:particleAction];

  [nodeCopy setNumParticlesToEmit:{-[SKEmitterNode numParticlesToEmit](self, "numParticlesToEmit")}];
  [nodeCopy setFieldBitMask:{-[SKEmitterNode fieldBitMask](self, "fieldBitMask")}];
  _info = [(SKNode *)self _info];
  v11 = [_info mutableCopy];
  [nodeCopy set_info:v11];

  shader = [(SKEmitterNode *)self shader];
  [nodeCopy setShader:shader];

  [nodeCopy setDensityBased:{-[SKEmitterNode densityBased](self, "densityBased")}];
  [(SKEmitterNode *)self particleDensity];
  [nodeCopy setParticleDensity:?];
  [(SKEmitterNode *)self particleSize];
  [nodeCopy setParticleSize:?];
  [nodeCopy setWantsNewParticles:{-[SKEmitterNode wantsNewParticles](self, "wantsNewParticles")}];
  particleAlphaSequence = [(SKEmitterNode *)self particleAlphaSequence];
  v14 = [particleAlphaSequence copy];
  [nodeCopy setParticleAlphaSequence:v14];

  particleScaleSequence = [(SKEmitterNode *)self particleScaleSequence];
  v16 = [particleScaleSequence copy];
  [nodeCopy setParticleScaleSequence:v16];

  particleRotationSequence = [(SKEmitterNode *)self particleRotationSequence];
  v18 = [particleRotationSequence copy];
  [nodeCopy setParticleRotationSequence:v18];

  particleColorBlendFactorSequence = [(SKEmitterNode *)self particleColorBlendFactorSequence];
  v20 = [particleColorBlendFactorSequence copy];
  [nodeCopy setParticleColorBlendFactorSequence:v20];

  particleColorSequence = [(SKEmitterNode *)self particleColorSequence];
  v22 = [particleColorSequence copy];
  [nodeCopy setParticleColorSequence:v22];

  fieldInfluenceSequence = [(SKEmitterNode *)self fieldInfluenceSequence];
  v24 = [fieldInfluenceSequence copy];
  [nodeCopy setFieldInfluenceSequence:v24];

  particleSpeedSequence = [(SKEmitterNode *)self particleSpeedSequence];
  v26 = [particleSpeedSequence copy];
  [nodeCopy setParticleSpeedSequence:v26];

  [(SKEmitterNode *)self emissionDistance];
  [nodeCopy setEmissionDistance:?];
  [(SKEmitterNode *)self emissionDistanceRange];
  [nodeCopy setEmissionDistanceRange:?];
  [(SKEmitterNode *)self particleBirthRate];
  [nodeCopy setParticleBirthRate:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKEmitterNode;
  v4 = [(SKNode *)&v8 copyWithZone:zone];
  [(SKEmitterNode *)self copyParticlePropertiesToNode:v4];
  v5 = v4[18];
  skcEmitterNode = self->_skcEmitterNode;
  *(v5 + 980) = skcEmitterNode[245];
  *(v5 + 984) = skcEmitterNode[246];
  [v4 setUsesPointSprites:{-[SKEmitterNode usesPointSprites](self, "usesPointSprites")}];
  return v4;
}

- (void)advanceSimulationTime:(NSTimeInterval)sec
{
  skcEmitterNode = self->_skcEmitterNode;
  v4 = skcEmitterNode[230];
  if ((skcEmitterNode[229] + v4) < sec)
  {
    sec = (skcEmitterNode[229] + v4);
  }

  if (sec > 0.0)
  {
    v5 = sec;
    SKCEmitterNode::advanceSimulationTime(skcEmitterNode, v5);
  }
}

- (void)setShader:(SKShader *)shader
{
  v5 = shader;
  objc_storeStrong((*(self->_skcEmitterNode + 74) + 576), shader);
  SKCNode::setDirty(*(self->_skcEmitterNode + 74));
  SKCNode::recomputeFlags(*(self->_skcEmitterNode + 74), 1);
  [(SKShader *)v5 _addTargetNode:self];
}

- (void)dealloc
{
  if (self->_skcEmitterNode)
  {
    targetNode = [(SKEmitterNode *)self targetNode];
    if (targetNode)
    {
      skcEmitterNode = self->_skcEmitterNode;
      WeakRetained = objc_loadWeakRetained(skcEmitterNode + 71);
      v6 = WeakRetained;
      if (WeakRetained)
      {
        SKCNode::removeInternalChild([WeakRetained _backingNode], *(skcEmitterNode + 74));
      }

      objc_storeWeak(skcEmitterNode + 71, 0);
      *(skcEmitterNode + 174) = 0;
    }

    SKCEmitterNode::removeSubEmitterNodes(self->_skcEmitterNode);
    v7 = self->_skcEmitterNode;
    v8 = *(v7 + 124);
    if (v8)
    {
      SKCEmitterNode::removeSubEmitterNode(v8, v7);
    }
  }

  v9.receiver = self;
  v9.super_class = SKEmitterNode;
  [(SKNode *)&v9 dealloc];
}

- (SKAttributeValue)valueForAttributeNamed:(NSString *)key
{
  v5.receiver = self;
  v5.super_class = SKEmitterNode;
  v3 = [(SKNode *)&v5 valueForAttributeNamed:key];

  return v3;
}

- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key
{
  v4.receiver = self;
  v4.super_class = SKEmitterNode;
  [(SKNode *)&v4 setValue:value forAttributeNamed:key];
}

+ (id)debugHierarchyPropertyDescriptions
{
  v15[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"particleColor");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"color");
  v15[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"particleTexture");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v5, @"propertyFormat", @"public.data");
  v15[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"shader");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v6, @"propertyFormat", @"objectInfo");
  v15[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"targetNode");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v7, @"propertyFormat", @"objectInfo");
  v15[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"particleBlendMode");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"SKBlendMode");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v8, @"propertyFormat", @"uinteger");
  v15[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v9, @"propertyFormat", @"public.data");
  v14 = 8;
  v10 = CFNumberCreate(0, kCFNumberCFIndexType, &v14);
  CFDictionaryAddValue(v9, @"visibility", v10);
  CFRelease(v10);
  v14 = 1;
  v11 = CFNumberCreate(0, kCFNumberCFIndexType, &v14);
  CFDictionaryAddValue(v9, @"propertyOptions", v11);
  CFRelease(v11);
  v15[5] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];

  return v12;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)Mutable
{
  keys[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"particleTexture"])
  {
    Mutable = [objectCopy particleTexture];

    if (Mutable)
    {
      particleTexture = [objectCopy particleTexture];
      cGImage = [particleTexture CGImage];

      if (cGImage)
      {
        v12 = *MEMORY[0x277CE1E10];
        identifier = [*MEMORY[0x277CE1E10] identifier];
        valuePtr = 1065353216;
        Mutable = CFDataCreateMutable(0, 0);
        v14 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);
        v15 = *MEMORY[0x277CBECE8];
        v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
        keys[0] = *MEMORY[0x277CD2D48];
        values[0] = v16;
        v17 = CFDictionaryCreate(v15, keys, values, 1, 0, 0);
        CGImageDestinationAddImage(v14, cGImage, v17);
        CGImageDestinationFinalize(v14);
        CFRelease(v17);
        CFRelease(v16);
        CFRelease(v14);

        v59 = @"propertyFormat";
        identifier2 = [v12 identifier];
        v60 = identifier2;
        *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      }

      else
      {
        Mutable = 0;
      }

      CGImageRelease(cGImage);
    }

    goto LABEL_67;
  }

  if (![nameCopy isEqualToString:@"particleColor"])
  {
    if ([nameCopy isEqualToString:@"visualRepresentation"])
    {
      Mutable = [objectCopy createDebugHierarchyVisualRepresentation];
      v57 = @"propertyFormat";
      identifier3 = [*MEMORY[0x277CE1E10] identifier];
      v58 = identifier3;
      *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];

      goto LABEL_67;
    }

    v28 = objectCopy;
    v29 = nameCopy;
    if ([(NSString *)v29 length])
    {
      NSSelectorFromString(v29);
      if (objc_opt_respondsToSelector())
      {
        v30 = v29;
        if (v30)
        {
LABEL_20:
          Mutable = [v28 valueForKey:v30];
LABEL_66:

          goto LABEL_67;
        }
      }

      else
      {
        if ([(NSString *)v29 length]< 2)
        {
          uppercaseString = [(NSString *)v29 uppercaseString];
        }

        else
        {
          v39 = [(NSString *)v29 substringToIndex:1];
          uppercaseString2 = [v39 uppercaseString];
          v41 = [(NSString *)v29 substringFromIndex:1];
          uppercaseString = [uppercaseString2 stringByAppendingString:v41];
        }

        v43 = [@"is" stringByAppendingString:uppercaseString];
        NSSelectorFromString(v43);
        if (objc_opt_respondsToSelector())
        {
          v30 = v43;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          goto LABEL_20;
        }
      }
    }

    if (Mutable)
    {
      v44 = v28;
      v45 = v29;
      if (v44)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v44];
      }

      else
      {
        v46 = &stru_282E190D8;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = &stru_282E190D8;
      }

      v48 = v47;
      values[0] = @"propertyName";
      values[1] = @"objectDescription";
      keys[0] = v48;
      keys[1] = v46;
      values[2] = @"errorDescription";
      keys[2] = &stru_282E190D8;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:keys forKeys:values count:3];
      v50 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v49];

      v51 = v50;
      *Mutable = v50;

      v30 = 0;
      Mutable = 0;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_66;
  }

  particleColor = [objectCopy particleColor];
  cGColor = [particleColor CGColor];
  if (cGColor)
  {
    Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    space = CGColorGetColorSpace(cGColor);
    value = CGColorSpaceCopyName(space);
    NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
    v22 = NumberOfComponents << 32;
    v23 = NumberOfComponents;
    if (NumberOfComponents << 32)
    {
      v24 = CFStringCreateMutable(0, 0);
      v25 = v23 - 1;
      if (v23 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v23;
      }

      do
      {
        CFStringAppend(v24, @"CGf");
        if (v25)
        {
          CFStringAppend(v24, @", ");
        }

        --v25;
        --v26;
      }

      while (v26);
    }

    else
    {
      v24 = &stru_282E190D8;
    }

    Components = CGColorGetComponents(cGColor);
    v32 = malloc_type_malloc(v22 >> 29, 0x6004044C4A2DFuLL);
    v33 = v32;
    if (v22)
    {
      if (v23 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v23;
      }

      v35 = v32;
      do
      {
        *v35++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
        --v34;
      }

      while (v34);
    }

    v36 = CFArrayCreate(0, v33, v23, MEMORY[0x277CBF128]);
    if (v22)
    {
      if (v23 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v23;
      }

      v38 = v33;
      do
      {
        CFRelease(*v38++);
        --v37;
      }

      while (v37);
    }

    free(v33);
    CGColorSpaceGetModel(space);
    if (v36)
    {
      CFDictionaryAddValue(Mutable, @"componentValues", v36);
    }

    if (v24)
    {
      CFDictionaryAddValue(Mutable, @"componentValuesFormat", v24);
    }

    if (value)
    {
      CFDictionaryAddValue(Mutable, @"colorSpaceName", value);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_67:

  return Mutable;
}

@end