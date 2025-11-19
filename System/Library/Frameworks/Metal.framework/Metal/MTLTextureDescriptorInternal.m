@interface MTLTextureDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithDevice:(id)a3;
- (MTLTextureDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)setCompressionType:(int64_t)a3;
- (void)setResourceOptions:(unint64_t)a3;
- (void)setStorageMode:(unint64_t)a3;
@end

@implementation MTLTextureDescriptorInternal

- (MTLTextureDescriptorInternal)init
{
  v6.receiver = self;
  v6.super_class = MTLTextureDescriptorInternal;
  v2 = [(MTLTextureDescriptorInternal *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = vdupq_n_s64(1uLL);
    *(v2 + 1) = xmmword_185DE1D40;
    *(v2 + 2) = v4;
    *(v2 + 3) = v4;
    *(v2 + 4) = v4;
    *(v2 + 72) = 1;
    *(v2 + 19) = 0;
    *(v2 + 216) = 0u;
    *(v2 + 25) = 84148994;
    *(v2 + 11) = 0;
    *(v2 + 8) = 0u;
    *(v2 + 14) = 0;
    *(v2 + 48) = 0;
    *(v2 + 22) = 0;
    *(v2 + 23) = 0;
    *(v2 + 21) = 0;
    *(v2 + 15) = dyld_program_sdk_at_least();
    v3->_private.protectionOptions = 0;
    v3->_private.writeAccessPattern = 0;
    v3->_private.placementSparsePageSize = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && memcmp(&self->_private, a3 + 16, 0xC0uLL) == 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    v5 = *&self->_private.width;
    *(result + 1) = *&self->_private.textureType;
    *(result + 2) = v5;
    v6 = *&self->_private.framebufferOnly;
    v8 = *&self->_private.depth;
    v7 = *&self->_private.sampleCount;
    *(result + 5) = *&self->_private.zeroFill;
    *(result + 6) = v6;
    *(result + 3) = v8;
    *(result + 4) = v7;
    v9 = *&self->_private.protectionOptions;
    v11 = *&self->_private.compressionMode;
    v10 = *&self->_private.resourceOptions;
    *(result + 9) = *&self->_private.allowGPUOptimizedContents;
    *(result + 10) = v9;
    *(result + 7) = v11;
    *(result + 8) = v10;
    v13 = *&self->_private.writeAccessPattern;
    v12 = *&self->_private.resolvedUsage;
    v14 = *&self->_private.compressionType;
    *(result + 28) = self->_private.storageMode;
    *(result + 12) = v13;
    *(result + 13) = v12;
    *(result + 11) = v14;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v26[66] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v25.receiver = self;
  v25.super_class = MTLTextureDescriptorInternal;
  v6 = [(MTLTextureDescriptorInternal *)&v25 description];
  v26[0] = v4;
  v26[1] = @"textureType =";
  v26[2] = MTLTextureTypeString(self->_private.textureType);
  v26[3] = v4;
  v26[4] = @"pixelFormat =";
  v26[5] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_private.pixelFormat)];
  v26[6] = v4;
  v26[7] = @"width =";
  v26[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.width];
  v26[9] = v4;
  v26[10] = @"height =";
  v26[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.height];
  v26[12] = v4;
  v26[13] = @"depth =";
  v26[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.depth];
  v26[15] = v4;
  v26[16] = @"mipmapLevelCount =";
  v26[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.mipmapLevelCount];
  v26[18] = v4;
  v26[19] = @"sampleCount =";
  v26[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.sampleCount];
  v26[21] = v4;
  v26[22] = @"arrayLength =";
  v26[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.arrayLength];
  v26[24] = v4;
  v26[25] = @"cpuCacheMode =";
  v7 = [(MTLTextureDescriptorInternal *)self cpuCacheMode];
  v8 = @"Invalid";
  v9 = @"MTLCPUCacheModeDefaultCache";
  if (v7)
  {
    v9 = @"Invalid";
  }

  if (v7 == 1)
  {
    v9 = @"MTLCPUCacheModeWriteCombined";
  }

  v26[26] = v9;
  v26[27] = v4;
  v26[28] = @"storageMode =";
  v10 = [(MTLTextureDescriptorInternal *)self storageMode];
  v11 = @"Invalid";
  if (v10 <= 3)
  {
    v11 = *(&off_1E6EEB7C8 + v10);
  }

  v26[29] = v11;
  v26[30] = v4;
  v26[31] = @"hazardTrackingMode =";
  v26[32] = MTLHazardTrackingModeString([(MTLTextureDescriptorInternal *)self hazardTrackingMode]);
  v26[33] = v4;
  v26[34] = @"resourceOptions =";
  v26[35] = MTLResourceOptionsString(self->_private.resourceOptions);
  v26[36] = v4;
  v26[37] = @"framebufferOnly =";
  v26[38] = [MEMORY[0x1E696AD98] numberWithBool:self->_private.framebufferOnly];
  v26[39] = v4;
  v26[40] = @"usage =";
  v26[41] = MTLTextureUsageString(self->_private.var0.textureUsage);
  v26[42] = v4;
  v26[43] = @"swizzle =";
  v26[44] = MTLTextureSwizzleString(self->_private.swizzle);
  v26[45] = v4;
  sparseSurfaceDefaultValue = self->_private.sparseSurfaceDefaultValue;
  v13 = @"MTLUnmappedDepthValueOne";
  if (sparseSurfaceDefaultValue != 1)
  {
    v13 = @"Invalid";
  }

  v14 = sparseSurfaceDefaultValue == 0;
  v15 = @"MTLUnmappedDepthValueZero";
  if (!v14)
  {
    v15 = v13;
  }

  v26[46] = @"sparseSurfaceDefaultValue =";
  v26[47] = v15;
  v26[48] = v4;
  v26[49] = @"allowGPUOptimizedContents =";
  v16 = @"NO";
  if (self->_private.allowGPUOptimizedContents)
  {
    v16 = @"YES";
  }

  v26[50] = v16;
  v26[51] = v4;
  v26[52] = @"forceResourceIndex =";
  v26[53] = [MEMORY[0x1E696AD98] numberWithBool:self->_private.forceResourceIndex];
  v26[54] = v4;
  v26[55] = @"resourceIndex =";
  v26[56] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_private.resourceIndex];
  v26[57] = v4;
  compressionType = self->_private.compressionType;
  v18 = @"MTLTextureCompressionTypeLossy";
  if (compressionType != 1)
  {
    v18 = @"Invalid";
  }

  v14 = compressionType == 0;
  v19 = @"MTLTextureCompressionTypeLossless";
  if (!v14)
  {
    v19 = v18;
  }

  v26[58] = @"compressionType =";
  v26[59] = v19;
  v26[60] = v4;
  v26[61] = @"writeAccessPattern =";
  writeAccessPattern = self->_private.writeAccessPattern;
  if (writeAccessPattern <= 2)
  {
    v8 = *(&off_1E6EEB7E8 + writeAccessPattern);
  }

  v26[62] = v8;
  v26[63] = v4;
  v26[64] = @"placementSparsePageSize =";
  placementSparsePageSize = self->_private.placementSparsePageSize;
  if (placementSparsePageSize)
  {
    v22 = MTLSparsePageSizeString(placementSparsePageSize);
  }

  else
  {
    v22 = @"0";
  }

  v26[65] = v22;
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 66), "componentsJoinedByString:", @" "];
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setStorageMode:(unint64_t)a3
{
  if (a3 == 3)
  {
    if (isMemoryLessStorageDisabled_onceToken != -1)
    {
      [MTLTextureDescriptorInternal setStorageMode:];
    }

    if (isMemoryLessStorageDisabled_result)
    {
      a3 = 2;
    }

    else
    {
      a3 = 3;
    }
  }

  self->_private.resourceOptions = self->_private.resourceOptions & 0xFFFFFFFFFFFFFF0FLL | (16 * a3);
  self->_private.storageMode = a3;
}

- (void)setResourceOptions:(unint64_t)a3
{
  if (!dyld_program_sdk_at_least())
  {
    a3 &= 0xFFFFFFFFFFFFFCFFLL;
  }

  v5 = a3 >> 4;
  if (v5 == 3)
  {
    if (isMemoryLessStorageDisabled_onceToken != -1)
    {
      [MTLTextureDescriptorInternal setStorageMode:];
    }

    v5 = 2;
    if (!isMemoryLessStorageDisabled_result)
    {
      v5 = 3;
    }
  }

  self->_private.resourceOptions = a3 & 0xFFFFFFFFFFFFFF0FLL | (16 * v5);
  self->_private.cpuCacheMode = a3 & 0xF;
  self->_private.storageMode = v5;
}

- (void)setCompressionType:(int64_t)a3
{
  self->_private.compressionMode = 0;
  v3 = 3;
  if (a3 != 1)
  {
    v3 = 0;
  }

  self->_private.compressionFootprint = v3;
  self->_private.compressionType = a3;
}

- (BOOL)validateWithDevice:(id)a3
{
  v147 = 0;
  memset(v146, 0, sizeof(v146));
  _MTLMessageContextBegin_(v146, "[MTLTextureDescriptorInternal validateWithDevice:]", 1416, a3, 0, "Texture Descriptor Validation");
  p_private = &self->_private;
  textureUsage = self->_private.var0.textureUsage;
  if (textureUsage)
  {
    v7 = textureUsage & 0x14017;
  }

  else
  {
    self->_private.resolvedUsage = 23;
    if (self->_private.swizzle == 84148994)
    {
      goto LABEL_7;
    }

    v7 = 17;
    if (self->_private.writeSwizzleEnabled)
    {
      v7 = 23;
    }
  }

  self->_private.resolvedUsage = v7;
LABEL_7:
  v8 = [(MTLTextureDescriptorInternal *)self textureType];
  if (v8 >= 0xA)
  {
    _MTLMessageContextPush_(v146, 4, @"type (%lu) is not a valid MTLTextureType.", v9, v10, v11, v12, v13, v8);
  }

  v14 = [(MTLTextureDescriptorInternal *)self cpuCacheMode];
  if (v14 >= 2)
  {
    _MTLMessageContextPush_(v146, 4, @"invalid cpuCacheMode (%lu)", v15, v16, v17, v18, v19, v14);
  }

  validateMTLStorageMode([(MTLTextureDescriptorInternal *)self storageMode], v146);
  v20 = [(MTLTextureDescriptorInternal *)self resourceOptions];
  validateMTLResourceOptions(v20, v146, v21, v22, v23, v24, v25, v26);
  v27 = [(MTLTextureDescriptorInternal *)self usage];
  if (v27 && (v27 & 0xFFFFFFFFFFFEBFC0) != 0)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureUsage has unknown bits 0x%lx.", v28, v29, v30, v31, v32, v27 & 0xFFFFFFFFFFFEBFC0);
  }

  textureType = p_private->textureType;
  if (p_private->textureType > 4)
  {
    if (textureType <= 6)
    {
      if (textureType == 5)
      {
        v34 = [a3 maxTextureDimensionCube];
        v43 = 1;
        v40 = v34;
        goto LABEL_38;
      }

      if (textureType == 6)
      {
        v34 = [a3 maxTextureDimensionCube];
        v42 = [a3 maxTextureLayers];
        v43 = 1;
        v40 = v34;
        goto LABEL_39;
      }

      goto LABEL_240;
    }

    if (textureType == 7)
    {
      v34 = [a3 maxTextureWidth3D];
      v40 = [a3 maxTextureHeight3D];
      v43 = [a3 maxTextureDepth3D];
      goto LABEL_38;
    }

    if (textureType == 8)
    {
      goto LABEL_31;
    }

    if (textureType != 9)
    {
      goto LABEL_240;
    }

    v41 = [a3 maxTextureBufferWidth];
LABEL_34:
    v34 = v41;
    v40 = 1;
    goto LABEL_35;
  }

  if (textureType <= 1)
  {
    if (textureType)
    {
      if (textureType != 1)
      {
        goto LABEL_240;
      }

      v34 = [a3 maxTextureWidth1D];
      v42 = [a3 maxTextureLayers];
      v40 = 1;
LABEL_32:
      v43 = 1;
      goto LABEL_39;
    }

    v41 = [a3 maxTextureWidth1D];
    goto LABEL_34;
  }

  if (textureType != 2)
  {
    if (textureType != 3)
    {
      if (textureType == 4)
      {
        goto LABEL_19;
      }

LABEL_240:
      abort();
    }

LABEL_31:
    v34 = [a3 maxTextureWidth2D];
    v40 = [a3 maxTextureHeight2D];
    v42 = [a3 maxTextureLayers];
    goto LABEL_32;
  }

LABEL_19:
  v34 = [a3 maxTextureWidth2D];
  v40 = [a3 maxTextureHeight2D];
LABEL_35:
  v43 = 1;
LABEL_38:
  v42 = 1;
LABEL_39:
  width = self->_private.width;
  if (!width)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has width of zero.", v35, v36, v37, v38, v39, Name);
    width = self->_private.width;
  }

  if (width > v34)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has width (%lu) greater than the maximum allowed size of %lu.", v35, v36, v37, v38, v39, width);
  }

  height = self->_private.height;
  if (!height)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has height of zero.", v35, v36, v37, v38, v39, Name);
    height = self->_private.height;
  }

  if (height > v40)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has height (%lu) greater than the maximum allowed size of %lu.", v35, v36, v37, v38, v39, height);
  }

  depth = self->_private.depth;
  if (!depth)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has depth of zero.", v35, v36, v37, v38, v39, Name);
    depth = self->_private.depth;
  }

  if (depth > v43)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has depth (%lu) greater than the maximum allowed size of %lu.", v35, v36, v37, v38, v39, depth);
  }

  arrayLength = self->_private.arrayLength;
  if (!arrayLength)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has arrayLength of zero.", v35, v36, v37, v38, v39, Name);
    arrayLength = self->_private.arrayLength;
  }

  if (arrayLength > v42)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has arrayLength (%lu) greater than the maximum allowed size of %lu.", v35, v36, v37, v38, v39, arrayLength);
  }

  if ([(MTLTextureDescriptorInternal *)self rotation]>= 5)
  {
    _MTLMessageContextPush_(v146, 4, @"rotation is not a valid MTLTextureRotation.", v48, v49, v50, v51, v52, Name);
  }

  if ([(MTLTextureDescriptorInternal *)self compressionMode]>= 3)
  {
    _MTLMessageContextPush_(v146, 4, @"compressionMode is not a valid MTLTextureCompressionMode.", v53, v54, v55, v56, v57, Name);
  }

  if ([(MTLTextureDescriptorInternal *)self compressionFootprint]>= 4)
  {
    _MTLMessageContextPush_(v146, 4, @"compressionFootprint is not a valid MTLTextureCompressionFootprint.", v58, v59, v60, v61, v62, Name);
  }

  if (([(MTLTextureDescriptorInternal *)self usage]& 0x20) != 0)
  {
    pixelFormat = self->_private.pixelFormat;
    if (pixelFormat - 53 >= 2)
    {
      if (pixelFormat == 103)
      {
        if ([a3 supportsAtomicUlongVoidMinMax])
        {
          goto LABEL_68;
        }

        v69 = @"This device does not support ulong texture atomics, so MTLPixelFormatRG32Uint cannot be used with texture atomics";
      }

      else
      {
        Name = MTLPixelFormatGetName(pixelFormat);
        v69 = @"%s is not a valid format to be used with texture atomics.";
      }

      _MTLMessageContextPush_(v146, 4, v69, v64, v65, v66, v67, v68, Name);
    }
  }

LABEL_68:
  v145 = 0;
  memset(v144, 0, sizeof(v144));
  MTLPixelFormatGetInfoForDevice(a3, self->_private.pixelFormat, v144);
  compressionFootprint = self->_private.compressionFootprint;
  compressionType = self->_private.compressionType;
  if (compressionType >= 2)
  {
    _MTLMessageContextPush_(v146, 4, @"compressionType is not a valid MTLTextureCompressionType.", v72, v73, v74, v75, v76, Name);
  }

  if (compressionType == 1 || compressionFootprint)
  {
    if (![a3 supportsLossyCompression])
    {
      v130 = @"MTLTextureDescriptor has compressionType set to MTLTextureCompressionTypeLossy, but the device does not support lossy compression";
      goto LABEL_225;
    }

    if (BYTE8(v144[0]))
    {
      if (compressionFootprint == 2)
      {
        v79 = 0x2000000;
      }

      else
      {
        v79 = 0x4000000;
      }

      if (compressionFootprint == 1)
      {
        v79 = 0x1000000;
      }

      v80 = DWORD2(v144[0]) & v79;
      if (compressionType == 1)
      {
        if (!v80)
        {
          _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has compressionType set to MTLTextureCompressionTypeLossy, but the pixel format %s does not support lossy compression", v72, v73, v74, v75, v76, *&v144[0]);
        }
      }

      else if (!v80)
      {
        _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor uses compressionFootprint %d, but the pixel format %s does not support that lossy compression mode on this device", v72, v73, v74, v75, v76, compressionFootprint);
      }
    }

    v81 = p_private->textureType;
    if (compressionFootprint == 3)
    {
      if (v81 <= 9 && ((1 << v81) & 0x203) != 0)
      {
        v82 = "uses compressionFootprint enabled";
        if (compressionType == 1)
        {
          v82 = "has compressionType set to MTLTextureCompressionTypeLossy";
        }

        _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor %s, which is not supported for 1D, 1DArray or TextureBuffer texture types", v72, v73, v74, v75, v76, v82);
      }
    }

    else
    {
      if (v81 != 2)
      {
        _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor uses compressionFootprint %d, which does not support any textureType other than MTLTextureType2D", v72, v73, v74, v75, v76, compressionFootprint);
      }

      if (p_private->mipmapLevelCount != 1)
      {
        _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor uses compressionFootprint %d, which does not support any mipmapLevelCount other than 1", v72, v73, v74, v75, v76, compressionFootprint);
      }
    }

    if (compressionType == 1 && (p_private->resourceOptions & 0xF0) != 0x20)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has compressionType set to MTLTextureCompressionTypeLossy, but the storageMode is not MTLStorageModePrivate", v72, v73, v74, v75, v76, Name);
    }

    v83 = p_private->var0.textureUsage;
    if ((v83 & 0x4000) != 0 || (v83 & 2) == 0 || p_private->compressionMode == 1)
    {
      if ((v83 & 0x10) == 0)
      {
LABEL_101:
        if (p_private->compressionMode == 2)
        {
          _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has compressionMode set to optOut, but requests lossy compression", v72, v73, v74, v75, v76, Name);
        }

        if (!p_private->allowGPUOptimizedContents)
        {
          _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has compressionType set to MTLTextureCompressionTypeLossy, but allowGPUOptimizedContents is set to NO", v72, v73, v74, v75, v76, Name);
        }

        if ((p_private->var0.textureUsage & 0x20) == 0)
        {
          goto LABEL_106;
        }

        v130 = @"MTLTextureDescriptor has compressionType set to MTLTextureCompressionTypeLossy, but usage includes MTLTextureUsageShaderAtomic";
LABEL_225:
        _MTLMessageContextPush_(v146, 4, v130, v72, v73, v74, v75, v76, Name);
        goto LABEL_106;
      }
    }

    else
    {
      v141 = "uses compressionFootprint enabled";
      if (compressionType == 1)
      {
        v141 = "has compressionType set to MTLTextureCompressionTypeLossy";
      }

      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor %s, but usage includes MTLTextureUsageShaderWrite", v72, v73, v74, v75, v76, v141);
      if ((p_private->var0.textureUsage & 0x10) == 0)
      {
        goto LABEL_101;
      }
    }

    v142 = "uses compressionFootprint enabled";
    if (compressionType == 1)
    {
      v142 = "has compressionType set to MTLTextureCompressionTypeLossy";
    }

    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor %s, but usage includes MTLTextureUsagePixelFormatView", v72, v73, v74, v75, v76, v142);
    goto LABEL_101;
  }

LABEL_106:
  if ((BYTE8(v144[0]) & 1) == 0)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has invalid pixelFormat (%lu).", v72, v73, v74, v75, v76, p_private->pixelFormat);
  }

  if (p_private->textureType == 6)
  {
    MTLValidateFeatureSupport(a3, 108, 0);
  }

  _mtlValidateMTLTextureSwizzleKey(p_private->swizzle, v70, v71, v72, v73, v74, v75, v76);
  if (p_private->swizzle != 84148994)
  {
    MTLValidateFeatureSupport(a3, 94, 0);
    v89 = 6;
    if (p_private->writeSwizzleEnabled)
    {
      v89 = 0;
    }

    v90 = v89 & p_private->resolvedUsage;
    if (v90)
    {
      [(MTLTextureDescriptorInternal *)v90 validateWithDevice:v146];
    }
  }

  v91 = p_private->textureType;
  if (p_private->textureType > 1 || (v93 = p_private->height, v93 != 1) && ([(__CFString *)MTLTextureTypeString(v91) UTF8String], _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor requests a height of %lu but the texture type %s requires that height is 1", v131, v132, v133, v134, v135, v93), v91 = p_private->textureType, p_private->textureType > 1))
  {
LABEL_116:
    v92 = p_private->depth;
    if (v91 == 7)
    {
      goto LABEL_123;
    }

    goto LABEL_121;
  }

  mipmapLevelCount = p_private->mipmapLevelCount;
  if (mipmapLevelCount != 1)
  {
    [(__CFString *)MTLTextureTypeString(v91) UTF8String];
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor requests a mipmapLevelCount of %lu but the texture type %s requires that mipmapLevelCount is 1", v136, v137, v138, v139, v140, mipmapLevelCount);
    v91 = p_private->textureType;
    goto LABEL_116;
  }

  v92 = p_private->depth;
LABEL_121:
  if (v92 != 1)
  {
    [(__CFString *)MTLTextureTypeString(v91) UTF8String];
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor requests a depth of %lu but the texture type %s requires that depth is 1", v124, v125, v126, v127, v128, v92);
    v92 = p_private->depth;
  }

LABEL_123:
  if (p_private->width <= p_private->height)
  {
    v95 = p_private->height;
  }

  else
  {
    v95 = p_private->width;
  }

  if (v95 <= v92)
  {
    v95 = v92;
  }

  v96 = 64 - __clz(v95);
  v97 = p_private->mipmapLevelCount;
  if (v97 - 1 >= v96)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor requests %lu mipmap levels, but the dimensions (%lu, %lu, %lu) can only support a maxiumum of %lu levels", v84, v85, v86, v87, v88, v97);
  }

  v98 = p_private->textureType;
  if (p_private->textureType == 4 || v98 == 8)
  {
    if (p_private->mipmapLevelCount != 1)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor mipmapLevelCount must equal 1 for multisample textures.", v84, v85, v86, v87, v88, Name);
    }

    if ((BYTE9(v144[0]) & 1) == 0)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor pixelFormat (%s) does not support multisample textures.", v84, v85, v86, v87, v88, *&v144[0]);
    }

    if (p_private->sampleCount <= 1)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor sampleCount must be > 1 for multisample textures.", v84, v85, v86, v87, v88, Name);
      sampleCount = p_private->sampleCount;
    }

    if (([a3 supportsTextureSampleCount:?] & 1) == 0)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor sampleCount (%lu) is not supported by device.", v84, v85, v86, v87, v88, p_private->sampleCount);
    }
  }

  else if (p_private->sampleCount != 1)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has sampleCount set but is using a type that does not allow sampleCount.", v84, v85, v86, v87, v88, Name);
  }

  v99 = p_private->textureType;
  if (p_private->textureType - 5 <= 1 && p_private->width != p_private->height)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor width must equal height for cube textures.", v84, v85, v86, v87, v88, Name);
    v99 = p_private->textureType;
  }

  if (v99 <= 8 && ((1 << v99) & 0x14A) != 0)
  {
    v100 = [a3 maxTextureLayers];
    if (p_private->textureType == 6)
    {
      v101 = v100 / 6;
    }

    else
    {
      v101 = v100;
    }

    if (p_private->arrayLength - 1 >= v101)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor arrayLength (%lu) is set to zero or greater than the max allowed size (%lu).", v84, v85, v86, v87, v88, p_private->arrayLength);
    }
  }

  else
  {
    v102 = p_private->arrayLength;
    if (v102 != 1)
    {
      [(MTLTextureDescriptorInternal *)v99 validateWithDevice:v146, v102];
    }
  }

  v103 = DWORD2(v144[0]);
  if ((WORD4(v144[0]) & 0x400) != 0)
  {
    if (p_private->sampleCount >= 2)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has a compressed pixel format set with a sample count greater than one.", v84, v85, v86, v87, v88, Name);
      v103 = DWORD2(v144[0]);
    }

    if ((v103 & 0x1000) != 0 && p_private->textureType == 7)
    {
      MTLValidateFeatureSupport(a3, 72, 0);
      goto LABEL_168;
    }

    v104 = p_private->textureType;
    if ((v103 & 0x400000) == 0 || v104 != 7)
    {
      if (v104 > 7)
      {
        goto LABEL_167;
      }

      if (((1 << v104) & 0x6C) != 0)
      {
        goto LABEL_168;
      }

      if (v104 == 7)
      {
        _MTLMessageContextPush_(v146, 4, @"The compressed pixel format %s cannot be used with MTLTextureType3D.", v84, v85, v86, v87, v88, *&v144[0]);
      }

      else
      {
LABEL_167:
        _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: compressed pixel formats require texture type of MTLTextureType2D[Array]%s or MTLTextureTypeCube[Array].", v84, v85, v86, v87, v88, ", MTLTextureType3D");
      }
    }

LABEL_168:
    if ((BYTE9(v144[0]) & 0x20) != 0)
    {
      if (p_private->textureType == 7)
      {
        _MTLMessageContextPush_(v146, 4, @"PVRTC 3D textures are not supported", v84, v85, v86, v87, v88, Name);
      }

      v105 = p_private->width;
      if ((v105 & (v105 - 1)) != 0 || (v106 = p_private->height, v105 != *&v106) || (v107 = vcnt_s8(v106), v107.i16[0] = vaddlv_u8(v107), v107.u32[0] >= 2uLL))
      {
        _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has a PVRTC pixel format (%s) set with non-square and/or non-power of two dimensions.", v84, v85, v86, v87, v88, *&v144[0]);
      }
    }
  }

  if (p_private->rotation && !p_private->framebufferOnly)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor has a non-zero rotation set but is not marked as framebufferOnly.", v84, v85, v86, v87, v88, Name);
  }

  if ((BYTE9(v144[0]) & 0x40) != 0)
  {
    if (p_private->mipmapLevelCount >= 2)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor requests %lu mipmap levels, but the MTLPixelFormat422 pixel format does not support mipmaps.", v84, v85, v86, v87, v88, p_private->mipmapLevelCount);
    }

    if (p_private->textureType != 2)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: MTLPixelFormat422 requires MTLTextureType2D.", v84, v85, v86, v87, v88, Name);
    }

    if (p_private->width)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: MTLPixelFormat422 requires even width.", v84, v85, v86, v87, v88, Name);
    }
  }

  v108 = [a3 supportsNonPrivateDepthStencilTextures];
  v109 = [a3 supportsNonPrivateMSAATextures];
  v110 = [a3 supportsMemorylessRenderTargets];
  v116 = BYTE8(v144[0]) & 0x60;
  resourceOptions = p_private->resourceOptions;
  if ((resourceOptions & 0xF0) == 0x30)
  {
    v118 = v110;
  }

  else
  {
    v118 = 1;
  }

  if ((v118 & 1) == 0)
  {
    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: MTLResourceStorageModeMemoryless is not a supported storage mode on this device.", v111, v112, v113, v114, v115, Name);
    if (!v116)
    {
      goto LABEL_196;
    }

LABEL_190:
    if (p_private->textureType - 2 >= 5 && p_private->textureType != 8)
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: depth/stencil pixel formats require texture type of MTLTextureType2D[Array] or MTLTextureTypeCube[Array].", v111, v112, v113, v114, v115, Name);
    }

    if ((resourceOptions & 0xF0) != 0)
    {
      v119 = 1;
    }

    else
    {
      v119 = v108;
    }

    if (v119)
    {
      if (v118)
      {
        goto LABEL_196;
      }
    }

    else
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: Depth, Stencil, DepthStencil textures cannot be allocated with MTLStorageModeShared on this device.", v111, v112, v113, v114, v115, Name);
      if (v118)
      {
        goto LABEL_196;
      }
    }

    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: Depth, Stencil, DepthStencil textures cannot be allocated with MTLResourceStorageModeMemoryless on this device.", v111, v112, v113, v114, v115, Name);
    goto LABEL_196;
  }

  if ((BYTE8(v144[0]) & 0x60) != 0)
  {
    goto LABEL_190;
  }

LABEL_196:
  if (v98 == 8 || v98 == 4)
  {
    if ((resourceOptions & 0xF0) != 0)
    {
      v120 = 1;
    }

    else
    {
      v120 = v109;
    }

    if (v120)
    {
      if (v118)
      {
        goto LABEL_203;
      }
    }

    else
    {
      _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: Multisample textures cannot be allocated with MTLStorageModeShared on this device.", v111, v112, v113, v114, v115, Name);
      if (v118)
      {
        goto LABEL_203;
      }
    }

    _MTLMessageContextPush_(v146, 4, @"MTLTextureDescriptor: Multisample textures cannot be allocated with MTLResourceStorageModeMemoryless on this device.", v111, v112, v113, v114, v115, Name);
  }

LABEL_203:
  if (p_private->textureType != 8)
  {
    goto LABEL_209;
  }

  if (![a3 supportsTexture2DMultisampleArray])
  {
    if ((resourceOptions & 0xF0) == 0x30)
    {
      goto LABEL_209;
    }

    v121 = @"MTLTextureType2DMultisampleArray is not supported on this device unless used with MTLResourceStorageModeMemoryless";
    goto LABEL_233;
  }

  if ((resourceOptions & 0xE0) != 0x20 && (resourceOptions & 0xF0) != 0)
  {
    v121 = @"MTLTextureType2DMultisampleArray is not supported on this device unless used with MTLResourceStorageModeMemoryless, MTLResourceStorageModePrivate, or MTLResourceStorageModeShared";
LABEL_233:
    _MTLMessageContextPush_(v146, 4, v121, v111, v112, v113, v114, v115, Name);
  }

LABEL_209:
  if (!p_private->colorSpaceConversionMatrix)
  {
    goto LABEL_212;
  }

  if ([a3 supportsColorSpaceConversionMatrixSelection])
  {
    if (p_private->colorSpaceConversionMatrix < 0xB)
    {
      goto LABEL_212;
    }

    Name = p_private->colorSpaceConversionMatrix;
    v129 = @"MTLTextureColorSpaceConversionMatrix (%lu) is not supported by this version of Metal.";
  }

  else
  {
    v129 = @"MTLTextureColorSpaceConversionMatrix selection is not supported on this device.";
  }

  _MTLMessageContextPush_(v146, 4, v129, v111, v112, v113, v114, v115, Name);
LABEL_212:
  if (p_private->writeAccessPattern >= 3uLL)
  {
    _MTLMessageContextPush_(v146, 4, @"invalid writeAccessPattern (%lu)", v111, v112, v113, v114, v115, p_private->writeAccessPattern);
  }

  _MTLMessageContextEnd(v146);
  return *&v146[0] == 0;
}

@end