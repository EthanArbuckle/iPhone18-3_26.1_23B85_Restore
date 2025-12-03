@interface MPSGraphArithmeticOp
- (id)broadcastGradTernaryWithOutputGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (id)broadcastGradWithOutputGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphArithmeticOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  switch(self->_mathOpType)
  {
    case 0uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IdentityOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 1uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ExponentOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 2uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ExponentBase2Op>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 3uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ExponentBase10Op>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 4uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::LogarithmOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 5uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::LogarithmBase2Op>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 6uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::LogarithmBase10Op>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 7uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SquareOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 8uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SquareRootOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 9uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ReciprocalSquareRootOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0xAuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ReciprocalOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0xBuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::AbsoluteOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0xCuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::AbsoluteSquareOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0xDuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::NegativeOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0xEuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SignOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0xFuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SignbitOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x10uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::CeilOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x11uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::FloorOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x12uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::RoundOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x13uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::RintOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x14uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SinOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x15uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::CosOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x16uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::TanOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x17uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SinhOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x18uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::CoshOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x19uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::TanhOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x1AuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ASinOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x1BuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ACosOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x1CuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ATanOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x1DuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ASinhOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x1EuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ACoshOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x1FuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ATanhOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x20uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::NotOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x21uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IsInfiniteOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x22uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IsFiniteOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x23uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IsNaNOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x24uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ErfOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x25uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::BitwiseNotOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x26uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::BitwisePopcountOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x27uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ConjugateOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x28uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::RealPartOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x29uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ImaginaryPartOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x2AuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::AddOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x2BuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::SubtractOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x2CuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::MultiplyOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x2DuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::DivideOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x2EuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::ModuloOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x2FuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::PowerOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x30uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::MinimumOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x31uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::MaximumOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x32uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::EqualToOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x33uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::NotEqualToOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x34uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::LessThanOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x35uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::LessThanOrEqualToOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x36uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x37uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOrEqualToOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x38uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::AndOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x39uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::OrOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x3AuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::NandOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x3BuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::NorOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x3CuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::XorOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x3DuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::XnorOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x3EuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::ATan2Op>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x3FuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseAndOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x40uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseOrOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x41uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseXorOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x42uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseLeftShiftOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x43uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseRightShiftOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x44uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::CreateComplexOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x45uLL:
      IsInfinite = createTernaryArithmeticOp<mlir::mps::SelectOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x46uLL:
      IsInfinite = createTernaryArithmeticOp<mlir::mps::ClampOp>(builder, table, values, nameCopy);
      goto LABEL_76;
    case 0x47uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::TruncateOp>(builder, table, values, nameCopy);
LABEL_76:
      values = IsInfinite;
      break;
    default:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      break;
  }

  return values;
}

- (id)broadcastGradWithOutputGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v11 = [inputTensors objectAtIndexedSubscript:index];
  v12 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name];
  v33 = [WeakRetained broadcastGradientArgsForPrimaryTensor:gradientCopy withSecondaryTensor:v11 name:v14];

  v15 = objc_loadWeakRetained(&self->super._graph);
  v16 = MEMORY[0x1E696AEC0];
  name2 = [(MPSGraphOperation *)self name];
  v18 = [v16 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name2];
  v19 = [v15 reductionSumWithTensor:gradientCopy axesTensor:v33 name:v18];

  v20 = objc_loadWeakRetained(&self->super._graph);
  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v22 = [inputTensors2 objectAtIndexedSubscript:index];
  v23 = MEMORY[0x1E696AEC0];
  name3 = [(MPSGraphOperation *)self name];
  v25 = [v23 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name3];
  v26 = [v20 shapeOfTensor:v22 name:v25];

  v27 = objc_loadWeakRetained(&self->super._graph);
  v28 = MEMORY[0x1E696AEC0];
  name4 = [(MPSGraphOperation *)self name];
  v30 = [v28 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name4];
  v31 = [v27 reshapeTensor:v19 withShapeTensor:v26 name:v30];

  return v31;
}

- (id)broadcastGradTernaryWithOutputGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v11 = [inputTensors objectAtIndexedSubscript:index];
  v12 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name];
  v33 = [WeakRetained broadcastGradientArgsForPrimaryTensor:gradientCopy withSecondaryTensor:v11 name:v14];

  v15 = objc_loadWeakRetained(&self->super._graph);
  v16 = MEMORY[0x1E696AEC0];
  name2 = [(MPSGraphOperation *)self name];
  v18 = [v16 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name2];
  v19 = [v15 reductionSumWithTensor:gradientCopy axesTensor:v33 name:v18];

  v20 = objc_loadWeakRetained(&self->super._graph);
  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v22 = [inputTensors2 objectAtIndexedSubscript:index];
  v23 = MEMORY[0x1E696AEC0];
  name3 = [(MPSGraphOperation *)self name];
  v25 = [v23 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name3];
  v26 = [v20 shapeOfTensor:v22 name:v25];

  v27 = objc_loadWeakRetained(&self->super._graph);
  v28 = MEMORY[0x1E696AEC0];
  name4 = [(MPSGraphOperation *)self name];
  v30 = [v28 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name4];
  v31 = [v27 reshapeTensor:v19 withShapeTensor:v26 name:v30];

  return v31;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v11 = 0;
  switch(self->_mathOpType)
  {
    case 0uLL:
      goto LABEL_77;
    case 1uLL:
      WeakRetained = objc_loadWeakRetained(&self->super._graph);
      outputTensors = [(MPSGraphOperation *)self outputTensors];
      v54 = [outputTensors objectAtIndexedSubscript:0];
      v306 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphOperation *)self name];
      v57 = [v306 stringWithFormat:@"%@/%@/multiplication", nameCopy, name];
      v58 = [WeakRetained multiplicationWithPrimaryTensor:v54 secondaryTensor:gradientCopy name:v57];
      goto LABEL_52;
    case 2uLL:
      v281 = objc_loadWeakRetained(&self->super._graph);
      v282 = [v281 constantWithScalar:&unk_1F5B77018 shape:268435488 dataType:0.693147181];

      v283 = objc_loadWeakRetained(&self->super._graph);
      v694 = v282;
      outputTensors2 = [(MPSGraphOperation *)self outputTensors];
      v285 = [outputTensors2 objectAtIndexedSubscript:0];
      v286 = MEMORY[0x1E696AEC0];
      name2 = [(MPSGraphOperation *)self name];
      v287 = [v286 stringWithFormat:@"%@/%@/multiplication_LN2", nameCopy, name2];
      v275 = [v283 multiplicationWithPrimaryTensor:v285 secondaryTensor:v282 name:v287];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v289 = MEMORY[0x1E696AEC0];
      name3 = [(MPSGraphOperation *)self name];
      v278 = [v289 stringWithFormat:@"%@/%@/multiplication", nameCopy, name3];
      v280 = [v276 multiplicationWithPrimaryTensor:v275 secondaryTensor:gradientCopy name:v278];
      goto LABEL_50;
    case 3uLL:
      v337 = objc_loadWeakRetained(&self->super._graph);
      v338 = [v337 constantWithScalar:&unk_1F5B77030 shape:268435488 dataType:2.30258509];

      v339 = objc_loadWeakRetained(&self->super._graph);
      v694 = v338;
      outputTensors3 = [(MPSGraphOperation *)self outputTensors];
      v341 = [outputTensors3 objectAtIndexedSubscript:0];
      v342 = MEMORY[0x1E696AEC0];
      name4 = [(MPSGraphOperation *)self name];
      v343 = [v342 stringWithFormat:@"%@/%@/multiplication_LN10", nameCopy, name4];
      v275 = [v339 multiplicationWithPrimaryTensor:v341 secondaryTensor:v338 name:v343];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v345 = MEMORY[0x1E696AEC0];
      name3 = [(MPSGraphOperation *)self name];
      v278 = [v345 stringWithFormat:@"%@/%@/multiplication", nameCopy, name3];
      v280 = [v276 multiplicationWithPrimaryTensor:v275 secondaryTensor:gradientCopy name:v278];
      goto LABEL_50;
    case 4uLL:
      WeakRetained = objc_loadWeakRetained(&self->super._graph);
      outputTensors = [(MPSGraphOperation *)self inputTensors];
      v54 = [outputTensors objectAtIndexedSubscript:0];
      v346 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphOperation *)self name];
      v57 = [v346 stringWithFormat:@"%@/%@/division", nameCopy, name];
      v58 = [WeakRetained divisionWithPrimaryTensor:gradientCopy secondaryTensor:v54 name:v57];
      goto LABEL_52;
    case 5uLL:
      v290 = objc_loadWeakRetained(&self->super._graph);
      v291 = [v290 constantWithScalar:&unk_1F5B77048 shape:268435488 dataType:0.693147181];

      v292 = objc_loadWeakRetained(&self->super._graph);
      v694 = v291;
      inputTensors = [(MPSGraphOperation *)self inputTensors];
      v294 = [inputTensors objectAtIndexedSubscript:0];
      v295 = MEMORY[0x1E696AEC0];
      name5 = [(MPSGraphOperation *)self name];
      v296 = [v295 stringWithFormat:@"%@/%@/multiplication_LN2", nameCopy, name5];
      v275 = [v292 multiplicationWithPrimaryTensor:v294 secondaryTensor:v291 name:v296];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v298 = MEMORY[0x1E696AEC0];
      name3 = [(MPSGraphOperation *)self name];
      v278 = [v298 stringWithFormat:@"%@/%@/division", nameCopy, name3];
      v280 = [v276 divisionWithPrimaryTensor:gradientCopy secondaryTensor:v275 name:v278];
      goto LABEL_50;
    case 6uLL:
      v307 = objc_loadWeakRetained(&self->super._graph);
      v308 = [v307 constantWithScalar:&unk_1F5B77060 shape:268435488 dataType:2.30258509];

      v309 = objc_loadWeakRetained(&self->super._graph);
      v694 = v308;
      inputTensors2 = [(MPSGraphOperation *)self inputTensors];
      v311 = [inputTensors2 objectAtIndexedSubscript:0];
      v312 = MEMORY[0x1E696AEC0];
      name6 = [(MPSGraphOperation *)self name];
      v313 = [v312 stringWithFormat:@"%@/%@/multiplication_LN10", nameCopy, name6];
      v275 = [v309 multiplicationWithPrimaryTensor:v311 secondaryTensor:v308 name:v313];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v315 = MEMORY[0x1E696AEC0];
      name3 = [(MPSGraphOperation *)self name];
      v278 = [v315 stringWithFormat:@"%@/%@/division", nameCopy, name3];
      v280 = [v276 divisionWithPrimaryTensor:gradientCopy secondaryTensor:v275 name:v278];
      goto LABEL_50;
    case 7uLL:
      v316 = objc_loadWeakRetained(&self->super._graph);
      v317 = [v316 constantWithScalar:&unk_1F5B77078 shape:268435488 dataType:2.0];

      v318 = objc_loadWeakRetained(&self->super._graph);
      v694 = v317;
      inputTensors3 = [(MPSGraphOperation *)self inputTensors];
      v320 = [inputTensors3 objectAtIndexedSubscript:0];
      v321 = MEMORY[0x1E696AEC0];
      name7 = [(MPSGraphOperation *)self name];
      v322 = [v321 stringWithFormat:@"%@/%@/multiplication_2.0", nameCopy, name7];
      v275 = [v318 multiplicationWithPrimaryTensor:v320 secondaryTensor:v317 name:v322];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v324 = MEMORY[0x1E696AEC0];
      name3 = [(MPSGraphOperation *)self name];
      v278 = [v324 stringWithFormat:@"%@/%@/multiplication", nameCopy, name3];
      v280 = [v276 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v275 name:v278];
      goto LABEL_50;
    case 8uLL:
      v364 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v364 constantWithScalar:&unk_1F5B77090 shape:268435488 dataType:0.5];

      v365 = objc_loadWeakRetained(&self->super._graph);
      inputTensors4 = [(MPSGraphOperation *)self inputTensors];
      v367 = [inputTensors4 objectAtIndexedSubscript:0];
      v368 = MEMORY[0x1E696AEC0];
      name8 = [(MPSGraphOperation *)self name];
      v369 = [v368 stringWithFormat:@"%@/%@/reciprocalSqrt", nameCopy, name8];
      v371 = [v365 reciprocalSquareRootWithTensor:v367 name:v369];

      v372 = objc_loadWeakRetained(&self->super._graph);
      v373 = MEMORY[0x1E696AEC0];
      name9 = [(MPSGraphOperation *)self name];
      v374 = [v373 stringWithFormat:@"%@/%@/multiplication_0.5", nameCopy, name9];
      v376 = [v372 multiplicationWithPrimaryTensor:v371 secondaryTensor:v694 name:v374];

      v96 = objc_loadWeakRetained(&self->super._graph);
      v377 = MEMORY[0x1E696AEC0];
      name10 = [(MPSGraphOperation *)self name];
      v118 = [v377 stringWithFormat:@"%@/%@/multiplication", nameCopy, name10];
      v11 = [v96 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v376 name:v118];

      goto LABEL_59;
    case 9uLL:
      v347 = objc_loadWeakRetained(&self->super._graph);
      v348 = [v347 constantWithScalar:&unk_1F5B770A8 shape:268435488 dataType:-1.5];

      v349 = objc_loadWeakRetained(&self->super._graph);
      v682 = v348;
      v693 = [v349 constantWithScalar:&unk_1F5B770C0 shape:268435488 dataType:-0.5];

      v350 = objc_loadWeakRetained(&self->super._graph);
      inputTensors5 = [(MPSGraphOperation *)self inputTensors];
      v352 = [inputTensors5 objectAtIndexedSubscript:0];
      v353 = MEMORY[0x1E696AEC0];
      name11 = [(MPSGraphOperation *)self name];
      v354 = [v353 stringWithFormat:@"%@/%@/pow_-1.5", nameCopy, name11];
      v356 = [v350 powerWithPrimaryTensor:v352 secondaryTensor:v348 name:v354];

      v357 = objc_loadWeakRetained(&self->super._graph);
      v358 = MEMORY[0x1E696AEC0];
      name12 = [(MPSGraphOperation *)self name];
      v359 = [v358 stringWithFormat:@"%@/%@/multiplication_-0.5", nameCopy, name12];
      v361 = [v357 multiplicationWithPrimaryTensor:v356 secondaryTensor:v693 name:v359];

      v71 = objc_loadWeakRetained(&self->super._graph);
      v362 = MEMORY[0x1E696AEC0];
      name13 = [(MPSGraphOperation *)self name];
      v363 = [v362 stringWithFormat:@"%@/%@/multiplication", nameCopy, name13];
      v11 = [v71 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v361 name:v363];

      goto LABEL_55;
    case 0xAuLL:
      v173 = objc_loadWeakRetained(&self->super._graph);
      v174 = MEMORY[0x1E696AEC0];
      name14 = [(MPSGraphOperation *)self name];
      v175 = [v174 stringWithFormat:@"%@/%@/negative", nameCopy, name14];
      v177 = [v173 negativeWithTensor:gradientCopy name:v175];

      v178 = objc_loadWeakRetained(&self->super._graph);
      v695 = v177;
      inputTensors6 = [(MPSGraphOperation *)self inputTensors];
      v180 = [inputTensors6 objectAtIndexedSubscript:0];
      v181 = MEMORY[0x1E696AEC0];
      name15 = [(MPSGraphOperation *)self name];
      v182 = [v181 stringWithFormat:@"%@/%@/square", nameCopy, name15];
      v184 = [v178 squareWithTensor:v180 name:v182];

      v185 = objc_loadWeakRetained(&self->super._graph);
      v186 = MEMORY[0x1E696AEC0];
      name16 = [(MPSGraphOperation *)self name];
      v187 = [v186 stringWithFormat:@"%@/%@/multiplication", nameCopy, name16];
      v11 = [v185 multiplicationWithPrimaryTensor:v184 secondaryTensor:v695 name:v187];

      goto LABEL_112;
    case 0xBuLL:
      v299 = objc_loadWeakRetained(&self->super._graph);
      inputTensors7 = [(MPSGraphOperation *)self inputTensors];
      v301 = [inputTensors7 objectAtIndexedSubscript:0];
      v302 = MEMORY[0x1E696AEC0];
      name17 = [(MPSGraphOperation *)self name];
      v303 = [v302 stringWithFormat:@"%@/%@/sign", nameCopy, name17];
      v135 = [v299 signWithTensor:v301 name:v303];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v305 = MEMORY[0x1E696AEC0];
      name18 = [(MPSGraphOperation *)self name];
      v138 = [v305 stringWithFormat:@"%@/%@/multiplication", nameCopy, name18];
      v140 = [v136 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v135 name:v138];
      goto LABEL_70;
    case 0xCuLL:
      inputTensors8 = [(MPSGraphOperation *)self inputTensors];
      v263 = [inputTensors8 objectAtIndexedSubscript:0];
      [v263 dataType];

      inputTensors9 = [(MPSGraphOperation *)self inputTensors];
      v265 = [inputTensors9 objectAtIndexedSubscript:0];
      dataType = [v265 dataType];

      if ((dataType & 0x1000000) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v267 = objc_loadWeakRetained(&self->super._graph);
      v268 = [v267 constantWithScalar:&unk_1F5B770D8 shape:268435488 dataType:2.0];

      v269 = objc_loadWeakRetained(&self->super._graph);
      v694 = v268;
      inputTensors10 = [(MPSGraphOperation *)self inputTensors];
      v271 = [inputTensors10 objectAtIndexedSubscript:0];
      v272 = MEMORY[0x1E696AEC0];
      name19 = [(MPSGraphOperation *)self name];
      v273 = [v272 stringWithFormat:@"%@/%@/multiplication_2.0", nameCopy, name19];
      v275 = [v269 multiplicationWithPrimaryTensor:v271 secondaryTensor:v268 name:v273];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v277 = MEMORY[0x1E696AEC0];
      name3 = [(MPSGraphOperation *)self name];
      v278 = [v277 stringWithFormat:@"%@/%@/multiplication", nameCopy, name3];
      v280 = [v276 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v275 name:v278];
LABEL_50:
      v11 = v280;

      goto LABEL_64;
    case 0xDuLL:
      v13 = objc_loadWeakRetained(&self->super._graph);
      v141 = MEMORY[0x1E696AEC0];
      name20 = [(MPSGraphOperation *)self name];
      v142 = [v141 stringWithFormat:@"%@/%@/negative", nameCopy, name20];
      v11 = [v13 negativeWithTensor:gradientCopy name:v142];

      goto LABEL_111;
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x47uLL:
      v12 = objc_loadWeakRetained(&self->super._graph);
      v13 = [v12 constantWithScalar:objc_msgSend(gradientCopy dataType:{"dataType"), 0.0}];

      v14 = objc_loadWeakRetained(&self->super._graph);
      v15 = [v14 shapeOfTensor:gradientCopy name:nameCopy];

      v16 = objc_loadWeakRetained(&self->super._graph);
      v11 = [v16 broadcastTensor:v13 toShapeTensor:v15 name:nameCopy];

      goto LABEL_111;
    case 0xFuLL:
      WeakRetained = objc_loadWeakRetained(&self->super._graph);
      outputTensors = [(MPSGraphOperation *)self outputTensors];
      v54 = [outputTensors objectAtIndexedSubscript:0];
      v261 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphOperation *)self name];
      v57 = [v261 stringWithFormat:@"%@/%@/multiplication", nameCopy, name];
      v58 = [WeakRetained multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v54 name:v57];
      goto LABEL_52;
    case 0x14uLL:
      v423 = objc_loadWeakRetained(&self->super._graph);
      inputTensors11 = [(MPSGraphOperation *)self inputTensors];
      v425 = [inputTensors11 objectAtIndexedSubscript:0];
      v426 = MEMORY[0x1E696AEC0];
      name21 = [(MPSGraphOperation *)self name];
      v427 = [v426 stringWithFormat:@"%@/%@/cos", nameCopy, name21];
      v135 = [v423 cosWithTensor:v425 name:v427];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v429 = MEMORY[0x1E696AEC0];
      name18 = [(MPSGraphOperation *)self name];
      v138 = [v429 stringWithFormat:@"%@/%@/multiplication", nameCopy, name18];
      v140 = [v136 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v135 name:v138];
      goto LABEL_70;
    case 0x15uLL:
      v42 = objc_loadWeakRetained(&self->super._graph);
      inputTensors12 = [(MPSGraphOperation *)self inputTensors];
      v44 = [inputTensors12 objectAtIndexedSubscript:0];
      v45 = MEMORY[0x1E696AEC0];
      name22 = [(MPSGraphOperation *)self name];
      v47 = [v45 stringWithFormat:@"%@/%@/cos", nameCopy, name22];
      WeakRetained = [v42 sinWithTensor:v44 name:v47];

      v49 = objc_loadWeakRetained(&self->super._graph);
      v50 = MEMORY[0x1E696AEC0];
      name23 = [(MPSGraphOperation *)self name];
      v52 = [v50 stringWithFormat:@"%@/%@/negative", nameCopy, name23];
      outputTensors = [v49 negativeWithTensor:WeakRetained name:v52];

      v54 = objc_loadWeakRetained(&self->super._graph);
      v55 = MEMORY[0x1E696AEC0];
      name = [(MPSGraphOperation *)self name];
      v57 = [v55 stringWithFormat:@"%@/%@/multiplication", nameCopy, name];
      v58 = [v54 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:outputTensors name:v57];
LABEL_52:
      v11 = v58;

      goto LABEL_53;
    case 0x16uLL:
      v442 = objc_loadWeakRetained(&self->super._graph);
      inputTensors13 = [(MPSGraphOperation *)self inputTensors];
      v444 = [inputTensors13 objectAtIndexedSubscript:0];
      v445 = MEMORY[0x1E696AEC0];
      name24 = [(MPSGraphOperation *)self name];
      v446 = [v445 stringWithFormat:@"%@/%@/cos", nameCopy, name24];
      WeakRetained = [v442 cosWithTensor:v444 name:v446];

      v448 = objc_loadWeakRetained(&self->super._graph);
      v449 = MEMORY[0x1E696AEC0];
      name25 = [(MPSGraphOperation *)self name];
      v450 = [v449 stringWithFormat:@"%@/%@/reciprocal", nameCopy, name25];
      v452 = [v448 reciprocalWithTensor:WeakRetained name:v450];

      v453 = objc_loadWeakRetained(&self->super._graph);
      v454 = MEMORY[0x1E696AEC0];
      name26 = [(MPSGraphOperation *)self name];
      v455 = [v454 stringWithFormat:@"%@/%@/square", nameCopy, name26];
      v457 = [v453 squareWithTensor:v452 name:v455];

      v458 = objc_loadWeakRetained(&self->super._graph);
      v459 = MEMORY[0x1E696AEC0];
      name27 = [(MPSGraphOperation *)self name];
      v460 = [v459 stringWithFormat:@"%@/%@/multiplication", nameCopy, name27];
      v11 = [v458 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v457 name:v460];

      goto LABEL_53;
    case 0x17uLL:
      v129 = objc_loadWeakRetained(&self->super._graph);
      inputTensors14 = [(MPSGraphOperation *)self inputTensors];
      v131 = [inputTensors14 objectAtIndexedSubscript:0];
      v132 = MEMORY[0x1E696AEC0];
      name28 = [(MPSGraphOperation *)self name];
      v133 = [v132 stringWithFormat:@"%@/%@/cosh", nameCopy, name28];
      v135 = [v129 coshWithTensor:v131 name:v133];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v137 = MEMORY[0x1E696AEC0];
      name18 = [(MPSGraphOperation *)self name];
      v138 = [v137 stringWithFormat:@"%@/%@/multiplication", nameCopy, name18];
      v140 = [v136 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v135 name:v138];
      goto LABEL_70;
    case 0x18uLL:
      v477 = objc_loadWeakRetained(&self->super._graph);
      inputTensors15 = [(MPSGraphOperation *)self inputTensors];
      v479 = [inputTensors15 objectAtIndexedSubscript:0];
      v480 = MEMORY[0x1E696AEC0];
      name29 = [(MPSGraphOperation *)self name];
      v481 = [v480 stringWithFormat:@"%@/%@/sinh", nameCopy, name29];
      v135 = [v477 sinhWithTensor:v479 name:v481];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v483 = MEMORY[0x1E696AEC0];
      name18 = [(MPSGraphOperation *)self name];
      v138 = [v483 stringWithFormat:@"%@/%@/multiplication", nameCopy, name18];
      v140 = [v136 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v135 name:v138];
LABEL_70:
      v11 = v140;

      goto LABEL_112;
    case 0x19uLL:
      v403 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v403 constantWithScalar:&unk_1F5B770F0 shape:268435488 dataType:1.0];

      v404 = objc_loadWeakRetained(&self->super._graph);
      inputTensors16 = [(MPSGraphOperation *)self inputTensors];
      v406 = [inputTensors16 objectAtIndexedSubscript:0];
      v407 = MEMORY[0x1E696AEC0];
      name30 = [(MPSGraphOperation *)self name];
      v408 = [v407 stringWithFormat:@"%@/%@/tanh", nameCopy, name30];
      v96 = [v404 tanhWithTensor:v406 name:v408];

      v410 = objc_loadWeakRetained(&self->super._graph);
      v411 = MEMORY[0x1E696AEC0];
      name31 = [(MPSGraphOperation *)self name];
      v412 = [v411 stringWithFormat:@"%@/%@/square", nameCopy, name31];
      name10 = [v410 squareWithTensor:v96 name:v412];

      v414 = objc_loadWeakRetained(&self->super._graph);
      v415 = MEMORY[0x1E696AEC0];
      name32 = [(MPSGraphOperation *)self name];
      v416 = [v415 stringWithFormat:@"%@/%@/subtraction_1", nameCopy, name32];
      v418 = [v414 subtractionWithPrimaryTensor:v694 secondaryTensor:name10 name:v416];

      v419 = objc_loadWeakRetained(&self->super._graph);
      v420 = MEMORY[0x1E696AEC0];
      name33 = [(MPSGraphOperation *)self name];
      v421 = [v420 stringWithFormat:@"%@/%@/multiplication", nameCopy, name33];
      v11 = [v419 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v418 name:v421];

      goto LABEL_59;
    case 0x1AuLL:
      v379 = objc_loadWeakRetained(&self->super._graph);
      v380 = [v379 constantWithScalar:&unk_1F5B77108 shape:268435488 dataType:1.0];

      v381 = objc_loadWeakRetained(&self->super._graph);
      v686 = v380;
      inputTensors17 = [(MPSGraphOperation *)self inputTensors];
      v383 = [inputTensors17 objectAtIndexedSubscript:0];
      v384 = MEMORY[0x1E696AEC0];
      name34 = [(MPSGraphOperation *)self name];
      v385 = [v384 stringWithFormat:@"%@/%@/square", nameCopy, name34];
      v697 = [v381 squareWithTensor:v383 name:v385];

      v387 = objc_loadWeakRetained(&self->super._graph);
      v388 = MEMORY[0x1E696AEC0];
      name35 = [(MPSGraphOperation *)self name];
      v389 = [v388 stringWithFormat:@"%@/%@/subtraction", nameCopy, name35];
      v391 = [v387 subtractionWithPrimaryTensor:v380 secondaryTensor:v697 name:v389];

      v392 = objc_loadWeakRetained(&self->super._graph);
      inputTensors18 = [(MPSGraphOperation *)self inputTensors];
      v394 = [inputTensors18 objectAtIndexedSubscript:0];
      v395 = MEMORY[0x1E696AEC0];
      name36 = [(MPSGraphOperation *)self name];
      v396 = [v395 stringWithFormat:@"%@/%@/reciprocalSquareRoot", nameCopy, name36];
      v398 = [v392 reciprocalSquareRootWithTensor:v394 name:v396];

      v399 = objc_loadWeakRetained(&self->super._graph);
      v400 = MEMORY[0x1E696AEC0];
      name37 = [(MPSGraphOperation *)self name];
      v401 = [v400 stringWithFormat:@"%@/%@/multiplication", nameCopy, name37];
      v11 = [v399 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v398 name:v401];

      goto LABEL_112;
    case 0x1BuLL:
      v59 = objc_loadWeakRetained(&self->super._graph);
      v60 = [v59 constantWithScalar:&unk_1F5B77120 shape:268435488 dataType:1.0];

      v61 = objc_loadWeakRetained(&self->super._graph);
      v682 = v60;
      inputTensors19 = [(MPSGraphOperation *)self inputTensors];
      v63 = [inputTensors19 objectAtIndexedSubscript:0];
      v64 = MEMORY[0x1E696AEC0];
      name38 = [(MPSGraphOperation *)self name];
      v66 = [v64 stringWithFormat:@"%@/%@/square", nameCopy, name38];
      v693 = [v61 squareWithTensor:v63 name:v66];

      v67 = objc_loadWeakRetained(&self->super._graph);
      v68 = MEMORY[0x1E696AEC0];
      name39 = [(MPSGraphOperation *)self name];
      v70 = [v68 stringWithFormat:@"%@/%@/subtraction", nameCopy, name39];
      v71 = [v67 subtractionWithPrimaryTensor:v60 secondaryTensor:v693 name:v70];

      v72 = objc_loadWeakRetained(&self->super._graph);
      v73 = MEMORY[0x1E696AEC0];
      name40 = [(MPSGraphOperation *)self name];
      v75 = [v73 stringWithFormat:@"%@/%@/reciprocalSquareRoot", nameCopy, name40];
      name13 = [v72 reciprocalSquareRootWithTensor:v71 name:v75];

      v77 = objc_loadWeakRetained(&self->super._graph);
      v78 = MEMORY[0x1E696AEC0];
      name41 = [(MPSGraphOperation *)self name];
      v80 = [v78 stringWithFormat:@"%@/%@/multiplication", nameCopy, name41];
      v81 = [v77 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:name13 name:v80];

      v82 = objc_loadWeakRetained(&self->super._graph);
      v83 = MEMORY[0x1E696AEC0];
      name42 = [(MPSGraphOperation *)self name];
      v85 = [v83 stringWithFormat:@"%@/%@/negative", nameCopy, name42];
      v11 = [v82 negativeWithTensor:v81 name:v85];

LABEL_55:
      goto LABEL_72;
    case 0x1CuLL:
      v89 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v89 constantWithScalar:&unk_1F5B77138 shape:268435488 dataType:1.0];

      v90 = objc_loadWeakRetained(&self->super._graph);
      inputTensors20 = [(MPSGraphOperation *)self inputTensors];
      v92 = [inputTensors20 objectAtIndexedSubscript:0];
      v93 = MEMORY[0x1E696AEC0];
      name43 = [(MPSGraphOperation *)self name];
      v95 = [v93 stringWithFormat:@"%@/%@/square", nameCopy, name43];
      v96 = [v90 squareWithTensor:v92 name:v95];

      v97 = objc_loadWeakRetained(&self->super._graph);
      v98 = MEMORY[0x1E696AEC0];
      name44 = [(MPSGraphOperation *)self name];
      v100 = [v98 stringWithFormat:@"%@/%@/addition", nameCopy, name44];
      v101 = [v97 additionWithPrimaryTensor:v694 secondaryTensor:v96 name:v100];

      v102 = objc_loadWeakRetained(&self->super._graph);
      v103 = MEMORY[0x1E696AEC0];
      name45 = [(MPSGraphOperation *)self name];
      v104 = [v103 stringWithFormat:@"%@/%@/division", nameCopy, name45];
      v106 = [v102 divisionWithPrimaryTensor:gradientCopy secondaryTensor:v101 name:v104];
      goto LABEL_62;
    case 0x1DuLL:
      v157 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v157 constantWithScalar:&unk_1F5B77150 shape:268435488 dataType:1.0];

      v158 = objc_loadWeakRetained(&self->super._graph);
      inputTensors21 = [(MPSGraphOperation *)self inputTensors];
      v160 = [inputTensors21 objectAtIndexedSubscript:0];
      v161 = MEMORY[0x1E696AEC0];
      name46 = [(MPSGraphOperation *)self name];
      v162 = [v161 stringWithFormat:@"%@/%@/square", nameCopy, name46];
      v96 = [v158 squareWithTensor:v160 name:v162];

      v164 = objc_loadWeakRetained(&self->super._graph);
      v165 = MEMORY[0x1E696AEC0];
      name47 = [(MPSGraphOperation *)self name];
      v166 = [v165 stringWithFormat:@"%@/%@/addition", nameCopy, name47];
      name10 = [v164 additionWithPrimaryTensor:v694 secondaryTensor:v96 name:v166];

      v168 = objc_loadWeakRetained(&self->super._graph);
      v169 = MEMORY[0x1E696AEC0];
      name48 = [(MPSGraphOperation *)self name];
      v170 = [v169 stringWithFormat:@"%@/%@/rsqrt", nameCopy, name48];
      v123 = [v168 reciprocalSquareRootWithTensor:name10 name:v170];

      v124 = objc_loadWeakRetained(&self->super._graph);
      v172 = MEMORY[0x1E696AEC0];
      name49 = [(MPSGraphOperation *)self name];
      v126 = [v172 stringWithFormat:@"%@/%@/multiplication", nameCopy, name49];
      v128 = [v124 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v123 name:v126];
      goto LABEL_27;
    case 0x1EuLL:
      v107 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v107 constantWithScalar:&unk_1F5B77168 shape:268435488 dataType:1.0];

      v108 = objc_loadWeakRetained(&self->super._graph);
      inputTensors22 = [(MPSGraphOperation *)self inputTensors];
      v110 = [inputTensors22 objectAtIndexedSubscript:0];
      v111 = MEMORY[0x1E696AEC0];
      name50 = [(MPSGraphOperation *)self name];
      v112 = [v111 stringWithFormat:@"%@/%@/square", nameCopy, name50];
      v96 = [v108 squareWithTensor:v110 name:v112];

      v114 = objc_loadWeakRetained(&self->super._graph);
      v115 = MEMORY[0x1E696AEC0];
      name51 = [(MPSGraphOperation *)self name];
      v116 = [v115 stringWithFormat:@"%@/%@/subtraction", nameCopy, name51];
      name10 = [v114 subtractionWithPrimaryTensor:v96 secondaryTensor:v694 name:v116];

      v119 = objc_loadWeakRetained(&self->super._graph);
      v120 = MEMORY[0x1E696AEC0];
      name52 = [(MPSGraphOperation *)self name];
      v121 = [v120 stringWithFormat:@"%@/%@/rsqrt", nameCopy, name52];
      v123 = [v119 reciprocalSquareRootWithTensor:name10 name:v121];

      v124 = objc_loadWeakRetained(&self->super._graph);
      v125 = MEMORY[0x1E696AEC0];
      name49 = [(MPSGraphOperation *)self name];
      v126 = [v125 stringWithFormat:@"%@/%@/multiplication", nameCopy, name49];
      v128 = [v124 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v123 name:v126];
LABEL_27:
      v11 = v128;

LABEL_59:
      goto LABEL_63;
    case 0x1FuLL:
      v430 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v430 constantWithScalar:&unk_1F5B77180 shape:268435488 dataType:1.0];

      v431 = objc_loadWeakRetained(&self->super._graph);
      inputTensors23 = [(MPSGraphOperation *)self inputTensors];
      v433 = [inputTensors23 objectAtIndexedSubscript:0];
      v434 = MEMORY[0x1E696AEC0];
      name53 = [(MPSGraphOperation *)self name];
      v435 = [v434 stringWithFormat:@"%@/%@/square", nameCopy, name53];
      v96 = [v431 squareWithTensor:v433 name:v435];

      v437 = objc_loadWeakRetained(&self->super._graph);
      v438 = MEMORY[0x1E696AEC0];
      name54 = [(MPSGraphOperation *)self name];
      v439 = [v438 stringWithFormat:@"%@/%@/subtraction", nameCopy, name54];
      v101 = [v437 subtractionWithPrimaryTensor:v96 secondaryTensor:v694 name:v439];

      v102 = objc_loadWeakRetained(&self->super._graph);
      v441 = MEMORY[0x1E696AEC0];
      name45 = [(MPSGraphOperation *)self name];
      v104 = [v441 stringWithFormat:@"%@/%@/division", nameCopy, name45];
      v106 = [v102 divisionWithPrimaryTensor:gradientCopy secondaryTensor:v101 name:v104];
LABEL_62:
      v11 = v106;

LABEL_63:
      goto LABEL_64;
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
      v13 = objc_loadWeakRetained(&self->super._graph);
      v17 = [v13 constantWithScalar:&unk_1F5B77198 shape:268435488 dataType:0.0];
      goto LABEL_110;
    case 0x24uLL:
      v484 = objc_loadWeakRetained(&self->super._graph);
      inputTensors24 = [(MPSGraphOperation *)self inputTensors];
      v486 = [inputTensors24 objectAtIndexedSubscript:0];
      v487 = MEMORY[0x1E696AEC0];
      name55 = [(MPSGraphOperation *)self name];
      v488 = [v487 stringWithFormat:@"%@/%@/square", nameCopy, name55];
      v490 = [v484 squareWithTensor:v486 name:v488];

      v491 = objc_loadWeakRetained(&self->super._graph);
      v492 = MEMORY[0x1E696AEC0];
      v682 = v490;
      name56 = [(MPSGraphOperation *)self name];
      v493 = [v492 stringWithFormat:@"%@/%@/negative", nameCopy, name56];
      v495 = [v491 negativeWithTensor:v490 name:v493];

      v496 = objc_loadWeakRetained(&self->super._graph);
      v497 = MEMORY[0x1E696AEC0];
      name57 = [(MPSGraphOperation *)self name];
      v498 = [v497 stringWithFormat:@"%@/%@/negative", nameCopy, name57];
      v500 = [v496 exponentWithTensor:v495 name:v498];

      v501 = objc_loadWeakRetained(&self->super._graph);
      v502 = [v501 constantWithScalar:&unk_1F5B771B0 shape:268435488 dataType:1.12837917];

      v503 = objc_loadWeakRetained(&self->super._graph);
      v504 = MEMORY[0x1E696AEC0];
      name58 = [(MPSGraphOperation *)self name];
      v505 = [v504 stringWithFormat:@"%@/%@/multiplication", nameCopy, name58];
      v507 = [v503 multiplicationWithPrimaryTensor:v500 secondaryTensor:v502 name:v505];

      v508 = objc_loadWeakRetained(&self->super._graph);
      v509 = MEMORY[0x1E696AEC0];
      name59 = [(MPSGraphOperation *)self name];
      v510 = [v509 stringWithFormat:@"%@/%@/multiplication_1", nameCopy, name59];
      v11 = [v508 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v507 name:v510];

LABEL_72:
      goto LABEL_112;
    case 0x27uLL:
      inputTensors25 = [(MPSGraphOperation *)self inputTensors];
      v153 = [inputTensors25 objectAtIndexedSubscript:0];
      [v153 dataType];

      inputTensors26 = [(MPSGraphOperation *)self inputTensors];
      v155 = [inputTensors26 objectAtIndexedSubscript:0];
      dataType2 = [v155 dataType];

      if ((dataType2 & 0x1000000) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_77;
    case 0x28uLL:
      inputTensors27 = [(MPSGraphOperation *)self inputTensors];
      v541 = [inputTensors27 objectAtIndexedSubscript:0];
      dataType3 = [v541 dataType];

      if ((dataType3 & 0x1000000) == 0)
      {
LABEL_77:
        v11 = gradientCopy;
        goto LABEL_112;
      }

      v587 = objc_loadWeakRetained(&self->super._graph);
      inputTensors28 = [(MPSGraphOperation *)self inputTensors];
      v589 = [inputTensors28 objectAtIndexedSubscript:0];
      if ([v589 dataType] == 285212736)
      {
        v590 = 268435488;
      }

      else
      {
        v590 = 268435472;
      }

      WeakRetained = [v587 constantWithScalar:&unk_1F5B771E0 shape:v590 dataType:0.0];

      v591 = objc_loadWeakRetained(&self->super._graph);
      shape = [gradientCopy shape];
      v593 = MEMORY[0x1E696AEC0];
      name60 = [(MPSGraphOperation *)self name];
      v594 = [v593 stringWithFormat:@"%@/%@/broadcastZero", nameCopy, name60];
      v596 = [v591 broadcastTensor:WeakRetained toShape:shape name:v594];

      v597 = objc_loadWeakRetained(&self->super._graph);
      v598 = [v597 complexTensorWithRealTensor:gradientCopy imaginaryTensor:v596 name:nameCopy];
      goto LABEL_97;
    case 0x29uLL:
      inputTensors29 = [(MPSGraphOperation *)self inputTensors];
      v544 = [inputTensors29 objectAtIndexedSubscript:0];
      dataType4 = [v544 dataType];

      if ((dataType4 & 0x1000000) != 0)
      {
        v599 = objc_loadWeakRetained(&self->super._graph);
        inputTensors30 = [(MPSGraphOperation *)self inputTensors];
        v601 = [inputTensors30 objectAtIndexedSubscript:0];
        if ([v601 dataType] == 285212736)
        {
          v602 = 268435488;
        }

        else
        {
          v602 = 268435472;
        }

        WeakRetained = [v599 constantWithScalar:&unk_1F5B771F8 shape:v602 dataType:0.0];

        v603 = objc_loadWeakRetained(&self->super._graph);
        shape2 = [gradientCopy shape];
        v605 = MEMORY[0x1E696AEC0];
        name61 = [(MPSGraphOperation *)self name];
        v606 = [v605 stringWithFormat:@"%@/%@/broadcastZero", nameCopy, name61];
        v596 = [v603 broadcastTensor:WeakRetained toShape:shape2 name:v606];

        v597 = objc_loadWeakRetained(&self->super._graph);
        v598 = [v597 complexTensorWithRealTensor:v596 imaginaryTensor:gradientCopy name:nameCopy];
LABEL_97:
        v11 = v598;

LABEL_53:
        goto LABEL_112;
      }

      if ((MTLReportFailureTypeEnabled() & 1) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_116;
    case 0x2AuLL:
      v18 = gradientCopy;
      inputTensors31 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors31 objectAtIndexedSubscript:index];

      inputTensors32 = [(MPSGraphOperation *)self inputTensors];
      v88 = [inputTensors32 objectAtIndexedSubscript:index];

      if (v88 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_22;
    case 0x2BuLL:
      v18 = gradientCopy;
      inputTensors33 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors33 objectAtIndexedSubscript:index];

      inputTensors34 = [(MPSGraphOperation *)self inputTensors];
      v146 = [inputTensors34 objectAtIndexedSubscript:index];

      if (v146 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (index == 1)
      {
        v147 = objc_loadWeakRetained(&self->super._graph);
        v148 = MEMORY[0x1E696AEC0];
        name62 = [(MPSGraphOperation *)self name];
        v149 = [v148 stringWithFormat:@"%@/%@/negative", nameCopy, name62];
        v151 = [v147 negativeWithTensor:v18 name:v149];

        v18 = v151;
      }

      goto LABEL_22;
    case 0x2CuLL:
      v325 = gradientCopy;
      inputTensors35 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors35 objectAtIndexedSubscript:index];

      inputTensors36 = [(MPSGraphOperation *)self inputTensors];
      v328 = [inputTensors36 objectAtIndexedSubscript:index];

      if (v328 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v329 = objc_loadWeakRetained(&self->super._graph);
      inputTensors37 = [(MPSGraphOperation *)self inputTensors];
      v331 = [inputTensors37 objectAtIndexedSubscript:index == 0];
      v332 = MEMORY[0x1E696AEC0];
      name63 = [(MPSGraphOperation *)self name];
      v333 = [v332 stringWithFormat:@"%@/%@/multiplication", nameCopy, name63];
      v335 = [v329 multiplicationWithPrimaryTensor:v325 secondaryTensor:v331 name:v333];

      v336 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v335 inputIndex:index name:nameCopy];
      goto LABEL_100;
    case 0x2DuLL:
      v512 = gradientCopy;
      inputTensors38 = [(MPSGraphOperation *)self inputTensors];
      v699 = v512;
      [inputTensors38 objectAtIndexedSubscript:index];

      inputTensors39 = [(MPSGraphOperation *)self inputTensors];
      v515 = [inputTensors39 objectAtIndexedSubscript:index];

      if (v515 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v516 = objc_loadWeakRetained(&self->super._graph);
      [(MPSGraphOperation *)self inputTensors];
      if (index)
        v517 = {;
        v518 = [v517 objectAtIndexedSubscript:1];
        v519 = MEMORY[0x1E696AEC0];
        name64 = [(MPSGraphOperation *)self name];
        v520 = [v519 stringWithFormat:@"%@/%@/square", nameCopy, name64];
        v522 = [v516 squareWithTensor:v518 name:v520];

        v523 = objc_loadWeakRetained(&self->super._graph);
        v680 = v522;
        inputTensors40 = [(MPSGraphOperation *)self inputTensors];
        v525 = [inputTensors40 objectAtIndexedSubscript:0];
        v526 = MEMORY[0x1E696AEC0];
        name65 = [(MPSGraphOperation *)self name];
        v527 = [v526 stringWithFormat:@"%@/%@/division", nameCopy, name65];
        v688 = [v523 divisionWithPrimaryTensor:v525 secondaryTensor:v522 name:v527];

        v529 = objc_loadWeakRetained(&self->super._graph);
        v530 = MEMORY[0x1E696AEC0];
        name66 = [(MPSGraphOperation *)self name];
        v531 = [v530 stringWithFormat:@"%@/%@/multiplication", nameCopy, name66];
        v533 = [v529 multiplicationWithPrimaryTensor:v512 secondaryTensor:v688 name:v531];

        v534 = objc_loadWeakRetained(&self->super._graph);
        v535 = MEMORY[0x1E696AEC0];
        name67 = [(MPSGraphOperation *)self name];
        v537 = v688;
        v536 = [v535 stringWithFormat:@"%@/%@/negative", nameCopy, name67];
        v13 = [v534 negativeWithTensor:v533 name:v536];
        v539 = v533;
        v516 = v680;
      }

      else
        v537 = {;
        v539 = v699;
        v534 = [v537 objectAtIndexedSubscript:1];
        v637 = MEMORY[0x1E696AEC0];
        name67 = [(MPSGraphOperation *)self name];
        v536 = [v637 stringWithFormat:@"%@/%@/division", nameCopy, name67];
        v13 = [v516 divisionWithPrimaryTensor:v699 secondaryTensor:v534 name:v536];
      }

      v17 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v13 inputIndex:index name:nameCopy];
      goto LABEL_110;
    case 0x2EuLL:
      v18 = gradientCopy;
      inputTensors41 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors41 objectAtIndexedSubscript:index];

      inputTensors42 = [(MPSGraphOperation *)self inputTensors];
      v21 = [inputTensors42 objectAtIndexedSubscript:index];

      if (v21 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (index == 1)
      {
        v675 = objc_loadWeakRetained(&self->super._graph);
        inputTensors43 = [(MPSGraphOperation *)self inputTensors];
        v22 = [inputTensors43 objectAtIndexedSubscript:0];
        inputTensors44 = [(MPSGraphOperation *)self inputTensors];
        v24 = [inputTensors44 objectAtIndexedSubscript:1];
        v25 = MEMORY[0x1E696AEC0];
        name68 = [(MPSGraphOperation *)self name];
        v27 = [v25 stringWithFormat:@"%@/%@/division", nameCopy, name68];
        v692 = [v675 divisionWithPrimaryTensor:v22 secondaryTensor:v24 name:v27];

        v28 = objc_loadWeakRetained(&self->super._graph);
        v29 = MEMORY[0x1E696AEC0];
        name69 = [(MPSGraphOperation *)self name];
        v31 = [v29 stringWithFormat:@"%@/%@/floor", nameCopy, name69];
        v32 = [v28 floorWithTensor:v692 name:v31];

        v33 = objc_loadWeakRetained(&self->super._graph);
        v34 = MEMORY[0x1E696AEC0];
        name70 = [(MPSGraphOperation *)self name];
        v36 = [v34 stringWithFormat:@"%@/%@/multiplication", nameCopy, name70];
        v37 = [v33 multiplicationWithPrimaryTensor:v18 secondaryTensor:v32 name:v36];

        v38 = objc_loadWeakRetained(&self->super._graph);
        v39 = MEMORY[0x1E696AEC0];
        name71 = [(MPSGraphOperation *)self name];
        v41 = [v39 stringWithFormat:@"%@/%@/negative", nameCopy, name71];
        v18 = [v38 negativeWithTensor:v37 name:v41];
      }

LABEL_22:
      v11 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v18 inputIndex:index name:nameCopy];

      goto LABEL_112;
    case 0x2FuLL:
      v189 = gradientCopy;
      inputTensors45 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors45 objectAtIndexedSubscript:index];

      inputTensors46 = [(MPSGraphOperation *)self inputTensors];
      v192 = [inputTensors46 objectAtIndexedSubscript:index];

      if (v192 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v193 = objc_loadWeakRetained(&self->super._graph);
      v194 = v193;
      if (index)
      {
        inputTensors47 = [(MPSGraphOperation *)self inputTensors];
        v196 = [inputTensors47 objectAtIndexedSubscript:0];
        v197 = MEMORY[0x1E696AEC0];
        name72 = [(MPSGraphOperation *)self name];
        v198 = [v197 stringWithFormat:@"%@/%@/logarithm", nameCopy, name72];
        v683 = [v194 logarithmWithTensor:v196 name:v198];

        v200 = objc_loadWeakRetained(&self->super._graph);
        v201 = MEMORY[0x1E696AEC0];
        name73 = [(MPSGraphOperation *)self name];
        v202 = [v201 stringWithFormat:@"%@/%@/multiplication", nameCopy, name73];
        v204 = [v200 multiplicationWithPrimaryTensor:v189 secondaryTensor:v683 name:v202];

        v676 = objc_loadWeakRetained(&self->super._graph);
        outputTensors4 = [(MPSGraphOperation *)self outputTensors];
        v205 = [outputTensors4 objectAtIndexedSubscript:0];
        v206 = MEMORY[0x1E696AEC0];
        name74 = [(MPSGraphOperation *)self name];
        v207 = [v206 stringWithFormat:@"%@/%@/multiplication2", nameCopy, name74];
        [v676 multiplicationWithPrimaryTensor:v204 secondaryTensor:v205 name:v207];
      }

      else
      {
        v667 = v189;
        v683 = [v193 constantWithScalar:&unk_1F5B771C8 shape:268435488 dataType:1.0];

        v608 = objc_loadWeakRetained(&self->super._graph);
        inputTensors48 = [(MPSGraphOperation *)self inputTensors];
        v610 = [inputTensors48 objectAtIndexedSubscript:1];
        v611 = MEMORY[0x1E696AEC0];
        name75 = [(MPSGraphOperation *)self name];
        v612 = [v611 stringWithFormat:@"%@/%@/subraction", nameCopy, name75];
        v676 = [v608 subtractionWithPrimaryTensor:v610 secondaryTensor:v683 name:v612];

        v614 = objc_loadWeakRetained(&self->super._graph);
        inputTensors49 = [(MPSGraphOperation *)self inputTensors];
        v616 = [inputTensors49 objectAtIndexedSubscript:0];
        v617 = MEMORY[0x1E696AEC0];
        name76 = [(MPSGraphOperation *)self name];
        v618 = [v617 stringWithFormat:@"%@/%@/power", nameCopy, name76];
        outputTensors4 = [v614 powerWithPrimaryTensor:v616 secondaryTensor:v676 name:v618];

        v620 = objc_loadWeakRetained(&self->super._graph);
        inputTensors50 = [(MPSGraphOperation *)self inputTensors];
        v622 = [inputTensors50 objectAtIndexedSubscript:1];
        v623 = MEMORY[0x1E696AEC0];
        name77 = [(MPSGraphOperation *)self name];
        v624 = [v623 stringWithFormat:@"%@/%@/multiplication", nameCopy, name77];
        v204 = [v620 multiplicationWithPrimaryTensor:v667 secondaryTensor:v622 name:v624];

        v205 = objc_loadWeakRetained(&self->super._graph);
        v626 = MEMORY[0x1E696AEC0];
        name74 = [(MPSGraphOperation *)self name];
        v207 = [v626 stringWithFormat:@"%@/%@/multiplication2", nameCopy, name74];
        [v205 multiplicationWithPrimaryTensor:outputTensors4 secondaryTensor:v204 name:v207];
      }
      v627 = ;

      v335 = v627;
      v336 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v627 inputIndex:index name:nameCopy];
LABEL_100:
      v11 = v336;

      goto LABEL_112;
    case 0x30uLL:
      v246 = gradientCopy;
      inputTensors51 = [(MPSGraphOperation *)self inputTensors];
      v696 = v246;
      [inputTensors51 objectAtIndexedSubscript:index];

      inputTensors52 = [(MPSGraphOperation *)self inputTensors];
      v249 = [inputTensors52 objectAtIndexedSubscript:index];

      if (v249 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v250 = objc_loadWeakRetained(&self->super._graph);
      inputTensors53 = [(MPSGraphOperation *)self inputTensors];
      v251 = [inputTensors53 objectAtIndexedSubscript:0];
      [(MPSGraphOperation *)self inputTensors];
      if (index)
        v252 = {;
        v253 = [v252 objectAtIndexedSubscript:1];
        v254 = MEMORY[0x1E696AEC0];
        name78 = [(MPSGraphOperation *)self name];
        v255 = [v254 stringWithFormat:@"%@/%@/greaterThanOrEqualTo", nameCopy, name78];
        v685 = [v250 greaterThanOrEqualToWithPrimaryTensor:v251 secondaryTensor:v253 name:v255];
      }

      else
        v628 = {;
        v629 = [v628 objectAtIndexedSubscript:1];
        v630 = MEMORY[0x1E696AEC0];
        name79 = [(MPSGraphOperation *)self name];
        v631 = [v630 stringWithFormat:@"%@/%@/lessThan", nameCopy, name79];
        v685 = [v250 lessThanWithPrimaryTensor:v251 secondaryTensor:v629 name:v631];
      }

      v257 = objc_loadWeakRetained(&self->super._graph);
      v258 = MEMORY[0x1E696AEC0];
      name80 = [(MPSGraphOperation *)self name];
      v259 = [v258 stringWithFormat:@"%@/%@/multiplication", nameCopy, name80];
      v13 = [v257 multiplicationWithPrimaryTensor:v696 secondaryTensor:v685 name:v259];

      v17 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v13 inputIndex:index name:nameCopy];
      goto LABEL_110;
    case 0x31uLL:
      v462 = gradientCopy;
      inputTensors54 = [(MPSGraphOperation *)self inputTensors];
      v698 = v462;
      [inputTensors54 objectAtIndexedSubscript:index];

      inputTensors55 = [(MPSGraphOperation *)self inputTensors];
      v465 = [inputTensors55 objectAtIndexedSubscript:index];

      if (v465 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v466 = objc_loadWeakRetained(&self->super._graph);
      inputTensors56 = [(MPSGraphOperation *)self inputTensors];
      v467 = [inputTensors56 objectAtIndexedSubscript:0];
      inputTensors57 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors57 objectAtIndexedSubscript:1];
      if (index)
        v469 = {;
        v470 = MEMORY[0x1E696AEC0];
        name81 = [(MPSGraphOperation *)self name];
        v471 = [v470 stringWithFormat:@"%@/%@/lessThanOrEqualTo", nameCopy, name81];
        v687 = [v466 lessThanOrEqualToWithPrimaryTensor:v467 secondaryTensor:v469 name:v471];
      }

      else
        v633 = {;
        v634 = MEMORY[0x1E696AEC0];
        name82 = [(MPSGraphOperation *)self name];
        v635 = [v634 stringWithFormat:@"%@/%@/greaterThan", nameCopy, name82];
        v687 = [v466 greaterThanWithPrimaryTensor:v467 secondaryTensor:v633 name:v635];
      }

      v473 = objc_loadWeakRetained(&self->super._graph);
      v474 = MEMORY[0x1E696AEC0];
      name83 = [(MPSGraphOperation *)self name];
      v475 = [v474 stringWithFormat:@"%@/%@/multiplication", nameCopy, name83];
      v13 = [v473 multiplicationWithPrimaryTensor:v698 secondaryTensor:v687 name:v475];

      v17 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v13 inputIndex:index name:nameCopy];
      goto LABEL_110;
    case 0x3EuLL:
      v677 = gradientCopy;
      inputTensors58 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors58 objectAtIndexedSubscript:index];

      inputTensors59 = [(MPSGraphOperation *)self inputTensors];
      v211 = [inputTensors59 objectAtIndexedSubscript:index];

      if (v211 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v212 = objc_loadWeakRetained(&self->super._graph);
      inputTensors60 = [(MPSGraphOperation *)self inputTensors];
      v214 = [inputTensors60 objectAtIndexedSubscript:0];
      v215 = MEMORY[0x1E696AEC0];
      name84 = [(MPSGraphOperation *)self name];
      v216 = [v215 stringWithFormat:@"%@/%@/square", nameCopy, name84];
      v694 = [v212 squareWithTensor:v214 name:v216];

      v218 = objc_loadWeakRetained(&self->super._graph);
      inputTensors61 = [(MPSGraphOperation *)self inputTensors];
      v220 = [inputTensors61 objectAtIndexedSubscript:1];
      v221 = MEMORY[0x1E696AEC0];
      name85 = [(MPSGraphOperation *)self name];
      v222 = [v221 stringWithFormat:@"%@/%@/square_1", nameCopy, name85];
      v684 = [v218 squareWithTensor:v220 name:v222];

      v224 = objc_loadWeakRetained(&self->super._graph);
      v225 = MEMORY[0x1E696AEC0];
      name86 = [(MPSGraphOperation *)self name];
      v226 = [v225 stringWithFormat:@"%@/%@/add", nameCopy, name86];
      v228 = [v224 additionWithPrimaryTensor:v694 secondaryTensor:v684 name:v226];

      v229 = objc_loadWeakRetained(&self->super._graph);
      v672 = v228;
      inputTensors62 = [(MPSGraphOperation *)self inputTensors];
      if (index)
      {
        v231 = [inputTensors62 objectAtIndexedSubscript:1];
        v232 = MEMORY[0x1E696AEC0];
        name87 = [(MPSGraphOperation *)self name];
        v233 = [v232 stringWithFormat:@"%@/%@/divide", nameCopy, name87];
        v235 = [v229 divisionWithPrimaryTensor:v231 secondaryTensor:v228 name:v233];

        v236 = objc_loadWeakRetained(&self->super._graph);
        v237 = MEMORY[0x1E696AEC0];
        name88 = [(MPSGraphOperation *)self name];
        v238 = [v237 stringWithFormat:@"%@/%@/multiplication", nameCopy, name88];
        v240 = [v236 multiplicationWithPrimaryTensor:v677 secondaryTensor:v235 name:v238];

        v241 = objc_loadWeakRetained(&self->super._graph);
        v242 = MEMORY[0x1E696AEC0];
        name89 = [(MPSGraphOperation *)self name];
        v243 = [v242 stringWithFormat:@"%@/%@/negative", nameCopy, name89];
        v245 = [v241 negativeWithTensor:v240 name:v243];
      }

      else
      {
        v638 = [inputTensors62 objectAtIndexedSubscript:0];
        v639 = MEMORY[0x1E696AEC0];
        name90 = [(MPSGraphOperation *)self name];
        v640 = [v639 stringWithFormat:@"%@/%@/divide", nameCopy, name90];
        v235 = [v229 divisionWithPrimaryTensor:v638 secondaryTensor:v228 name:v640];

        v241 = objc_loadWeakRetained(&self->super._graph);
        v642 = MEMORY[0x1E696AEC0];
        name89 = [(MPSGraphOperation *)self name];
        v243 = [v642 stringWithFormat:@"%@/%@/multiplication", nameCopy, name89];
        v245 = [v241 multiplicationWithPrimaryTensor:v677 secondaryTensor:v235 name:v243];
        v240 = v677;
      }

      v11 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v245 inputIndex:index name:nameCopy];

LABEL_64:
      goto LABEL_112;
    case 0x44uLL:
      if (index == 1)
      {
        v13 = objc_loadWeakRetained(&self->super._graph);
        v17 = [v13 imaginaryPartOfTensor:gradientCopy name:nameCopy];
LABEL_110:
        v11 = v17;
LABEL_111:

        goto LABEL_112;
      }

      if (!index)
      {
        v13 = objc_loadWeakRetained(&self->super._graph);
        v17 = [v13 realPartOfTensor:gradientCopy name:nameCopy];
        goto LABEL_110;
      }

      if (MTLReportFailureTypeEnabled())
      {
LABEL_116:
        MTLReportFailure();
      }

LABEL_117:
      v11 = 0;
      goto LABEL_112;
    case 0x45uLL:
      v575 = gradientCopy;
      inputTensors63 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors63 objectAtIndexedSubscript:index];

      inputTensors64 = [(MPSGraphOperation *)self inputTensors];
      v578 = [inputTensors64 objectAtIndexedSubscript:index];

      if (v578 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (index == 1)
      {
        v644 = objc_loadWeakRetained(&self->super._graph);
        v691 = [v644 constantWithScalar:&unk_1F5B77228 shape:268435488 dataType:0.0];

        v701 = objc_loadWeakRetained(&self->super._graph);
        inputTensors65 = [(MPSGraphOperation *)self inputTensors];
        v581 = v691;
        v582 = [inputTensors65 objectAtIndexedSubscript:2];
        v645 = MEMORY[0x1E696AEC0];
        name91 = [(MPSGraphOperation *)self name];
        v584 = [v645 stringWithFormat:@"%@/%@/select", nameCopy, name91];
        v586 = [v701 selectWithPredicateTensor:v582 truePredicateTensor:v575 falsePredicateTensor:v691 name:v584];
        goto LABEL_119;
      }

      if (!index)
      {
        v579 = objc_loadWeakRetained(&self->super._graph);
        v690 = [v579 constantWithScalar:&unk_1F5B77210 shape:268435488 dataType:0.0];

        v701 = objc_loadWeakRetained(&self->super._graph);
        inputTensors65 = [(MPSGraphOperation *)self inputTensors];
        v581 = v690;
        v582 = [inputTensors65 objectAtIndexedSubscript:2];
        v583 = MEMORY[0x1E696AEC0];
        name91 = [(MPSGraphOperation *)self name];
        v584 = [v583 stringWithFormat:@"%@/%@/select", nameCopy, name91];
        v586 = [v701 selectWithPredicateTensor:v582 truePredicateTensor:v690 falsePredicateTensor:v575 name:v584];
LABEL_119:
        v646 = v586;

        v647 = [(MPSGraphArithmeticOp *)self broadcastGradTernaryWithOutputGradient:v646 inputIndex:index name:nameCopy];

        v11 = v647;
        goto LABEL_112;
      }

      v11 = 0;

LABEL_112:

      return v11;
    case 0x46uLL:
      v681 = gradientCopy;
      inputTensors66 = [(MPSGraphOperation *)self inputTensors];
      [inputTensors66 objectAtIndexedSubscript:index];

      inputTensors67 = [(MPSGraphOperation *)self inputTensors];
      v548 = [inputTensors67 objectAtIndexedSubscript:index];

      if (v548 != tensorCopy && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v549 = objc_loadWeakRetained(&self->super._graph);
      v689 = [v549 constantWithScalar:&unk_1F5B77240 shape:268435488 dataType:0.0];

      v673 = objc_loadWeakRetained(&self->super._graph);
      if (index == 1)
      {
        inputTensors68 = [(MPSGraphOperation *)self inputTensors];
        v648 = [inputTensors68 objectAtIndexedSubscript:0];
        inputTensors69 = [(MPSGraphOperation *)self inputTensors];
        v650 = [inputTensors69 objectAtIndexedSubscript:1];
        v651 = MEMORY[0x1E696AEC0];
        name92 = [(MPSGraphOperation *)self name];
        v652 = [v651 stringWithFormat:@"%@/%@/lessThan", nameCopy, name92];
        v700 = [v673 lessThanWithPrimaryTensor:v648 secondaryTensor:v650 name:v652];

        v566 = objc_loadWeakRetained(&self->super._graph);
        v654 = MEMORY[0x1E696AEC0];
        name93 = [(MPSGraphOperation *)self name];
        v655 = v654;
        name97 = v681;
        v574 = v689;
        v568 = [v655 stringWithFormat:@"%@/%@/select", nameCopy, name93];
        v656 = [v566 selectWithPredicateTensor:v700 truePredicateTensor:v681 falsePredicateTensor:v689 name:v568];
      }

      else
      {
        if (!index)
        {
          inputTensors70 = [(MPSGraphOperation *)self inputTensors];
          v550 = [inputTensors70 objectAtIndexedSubscript:0];
          inputTensors71 = [(MPSGraphOperation *)self inputTensors];
          v552 = [inputTensors71 objectAtIndexedSubscript:1];
          v553 = MEMORY[0x1E696AEC0];
          name94 = [(MPSGraphOperation *)self name];
          v554 = [v553 stringWithFormat:@"%@/%@/lessThan", nameCopy, name94];
          v700 = [v673 lessThanWithPrimaryTensor:v550 secondaryTensor:v552 name:v554];

          v556 = objc_loadWeakRetained(&self->super._graph);
          inputTensors72 = [(MPSGraphOperation *)self inputTensors];
          v557 = [inputTensors72 objectAtIndexedSubscript:0];
          inputTensors73 = [(MPSGraphOperation *)self inputTensors];
          v559 = [inputTensors73 objectAtIndexedSubscript:2];
          v560 = MEMORY[0x1E696AEC0];
          name95 = [(MPSGraphOperation *)self name];
          v561 = [v560 stringWithFormat:@"%@/%@/greaterThan", nameCopy, name95];
          v674 = [v556 lessThanWithPrimaryTensor:v557 secondaryTensor:v559 name:v561];

          v563 = objc_loadWeakRetained(&self->super._graph);
          v564 = MEMORY[0x1E696AEC0];
          name96 = [(MPSGraphOperation *)self name];
          v566 = v674;
          v565 = [v564 stringWithFormat:@"%@/%@/logicalOR", nameCopy, name96];
          name93 = [v563 logicalORWithPrimaryTensor:v700 secondaryTensor:v674 name:v565];

          v568 = objc_loadWeakRetained(&self->super._graph);
          v570 = MEMORY[0x1E696AEC0];
          name97 = [(MPSGraphOperation *)self name];
          v571 = [v570 stringWithFormat:@"%@/%@/select", nameCopy, name97];
          v573 = [v568 selectWithPredicateTensor:name93 truePredicateTensor:v689 falsePredicateTensor:v681 name:v571];

          v574 = v689;
          goto LABEL_124;
        }

        inputTensors74 = [(MPSGraphOperation *)self inputTensors];
        v657 = [inputTensors74 objectAtIndexedSubscript:0];
        inputTensors75 = [(MPSGraphOperation *)self inputTensors];
        v659 = [inputTensors75 objectAtIndexedSubscript:2];
        v660 = MEMORY[0x1E696AEC0];
        name98 = [(MPSGraphOperation *)self name];
        v661 = [v660 stringWithFormat:@"%@/%@/greaterThan", nameCopy, name98];
        v700 = [v673 lessThanWithPrimaryTensor:v657 secondaryTensor:v659 name:v661];

        v566 = objc_loadWeakRetained(&self->super._graph);
        v663 = MEMORY[0x1E696AEC0];
        name93 = [(MPSGraphOperation *)self name];
        v664 = v663;
        name97 = v681;
        v574 = v689;
        v568 = [v664 stringWithFormat:@"%@/%@/select", nameCopy, name93];
        v656 = [v566 selectWithPredicateTensor:v700 truePredicateTensor:v681 falsePredicateTensor:v689 name:v568];
      }

      v573 = v656;
LABEL_124:

      v11 = [(MPSGraphArithmeticOp *)self broadcastGradTernaryWithOutputGradient:v573 inputIndex:index name:nameCopy];

      goto LABEL_112;
    default:
      goto LABEL_112;
  }
}

@end