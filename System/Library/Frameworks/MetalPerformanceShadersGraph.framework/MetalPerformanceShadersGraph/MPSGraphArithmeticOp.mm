@interface MPSGraphArithmeticOp
- (id)broadcastGradTernaryWithOutputGradient:(id)a3 inputIndex:(unint64_t)a4 name:(id)a5;
- (id)broadcastGradWithOutputGradient:(id)a3 inputIndex:(unint64_t)a4 name:(id)a5;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphArithmeticOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v11 = a7;
  switch(self->_mathOpType)
  {
    case 0uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IdentityOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 1uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ExponentOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 2uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ExponentBase2Op>(a3, a4, a5, v11);
      goto LABEL_76;
    case 3uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ExponentBase10Op>(a3, a4, a5, v11);
      goto LABEL_76;
    case 4uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::LogarithmOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 5uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::LogarithmBase2Op>(a3, a4, a5, v11);
      goto LABEL_76;
    case 6uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::LogarithmBase10Op>(a3, a4, a5, v11);
      goto LABEL_76;
    case 7uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SquareOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 8uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SquareRootOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 9uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ReciprocalSquareRootOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0xAuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ReciprocalOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0xBuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::AbsoluteOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0xCuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::AbsoluteSquareOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0xDuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::NegativeOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0xEuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SignOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0xFuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SignbitOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x10uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::CeilOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x11uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::FloorOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x12uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::RoundOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x13uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::RintOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x14uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SinOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x15uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::CosOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x16uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::TanOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x17uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::SinhOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x18uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::CoshOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x19uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::TanhOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x1AuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ASinOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x1BuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ACosOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x1CuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ATanOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x1DuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ASinhOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x1EuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ACoshOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x1FuLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ATanhOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x20uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::NotOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x21uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IsInfiniteOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x22uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IsFiniteOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x23uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::IsNaNOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x24uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ErfOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x25uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::BitwiseNotOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x26uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::BitwisePopcountOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x27uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ConjugateOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x28uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::RealPartOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x29uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::ImaginaryPartOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x2AuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::AddOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x2BuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::SubtractOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x2CuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::MultiplyOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x2DuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::DivideOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x2EuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::ModuloOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x2FuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::PowerOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x30uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::MinimumOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x31uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::MaximumOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x32uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::EqualToOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x33uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::NotEqualToOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x34uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::LessThanOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x35uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::LessThanOrEqualToOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x36uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x37uLL:
      IsInfinite = createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOrEqualToOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x38uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::AndOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x39uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::OrOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x3AuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::NandOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x3BuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::NorOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x3CuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::XorOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x3DuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::XnorOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x3EuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::ATan2Op>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x3FuLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseAndOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x40uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseOrOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x41uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseXorOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x42uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseLeftShiftOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x43uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::BitwiseRightShiftOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x44uLL:
      IsInfinite = createBinaryArithmeticOp<mlir::mps::CreateComplexOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x45uLL:
      IsInfinite = createTernaryArithmeticOp<mlir::mps::SelectOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x46uLL:
      IsInfinite = createTernaryArithmeticOp<mlir::mps::ClampOp>(a3, a4, a5, v11);
      goto LABEL_76;
    case 0x47uLL:
      IsInfinite = createUnaryArithmeticOp<mlir::mps::TruncateOp>(a3, a4, a5, v11);
LABEL_76:
      a5 = IsInfinite;
      break;
    default:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      break;
  }

  return a5;
}

- (id)broadcastGradWithOutputGradient:(id)a3 inputIndex:(unint64_t)a4 name:(id)a5
{
  v34 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v10 = [(MPSGraphOperation *)self inputTensors];
  v11 = [v10 objectAtIndexedSubscript:a4];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/braodcastGrad", v8, v13];
  v33 = [WeakRetained broadcastGradientArgsForPrimaryTensor:v34 withSecondaryTensor:v11 name:v14];

  v15 = objc_loadWeakRetained(&self->super._graph);
  v16 = MEMORY[0x1E696AEC0];
  v17 = [(MPSGraphOperation *)self name];
  v18 = [v16 stringWithFormat:@"%@/%@/braodcastGrad", v8, v17];
  v19 = [v15 reductionSumWithTensor:v34 axesTensor:v33 name:v18];

  v20 = objc_loadWeakRetained(&self->super._graph);
  v21 = [(MPSGraphOperation *)self inputTensors];
  v22 = [v21 objectAtIndexedSubscript:a4];
  v23 = MEMORY[0x1E696AEC0];
  v24 = [(MPSGraphOperation *)self name];
  v25 = [v23 stringWithFormat:@"%@/%@/braodcastGrad", v8, v24];
  v26 = [v20 shapeOfTensor:v22 name:v25];

  v27 = objc_loadWeakRetained(&self->super._graph);
  v28 = MEMORY[0x1E696AEC0];
  v29 = [(MPSGraphOperation *)self name];
  v30 = [v28 stringWithFormat:@"%@/%@/braodcastGrad", v8, v29];
  v31 = [v27 reshapeTensor:v19 withShapeTensor:v26 name:v30];

  return v31;
}

- (id)broadcastGradTernaryWithOutputGradient:(id)a3 inputIndex:(unint64_t)a4 name:(id)a5
{
  v34 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v10 = [(MPSGraphOperation *)self inputTensors];
  v11 = [v10 objectAtIndexedSubscript:a4];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/braodcastGrad", v8, v13];
  v33 = [WeakRetained broadcastGradientArgsForPrimaryTensor:v34 withSecondaryTensor:v11 name:v14];

  v15 = objc_loadWeakRetained(&self->super._graph);
  v16 = MEMORY[0x1E696AEC0];
  v17 = [(MPSGraphOperation *)self name];
  v18 = [v16 stringWithFormat:@"%@/%@/braodcastGrad", v8, v17];
  v19 = [v15 reductionSumWithTensor:v34 axesTensor:v33 name:v18];

  v20 = objc_loadWeakRetained(&self->super._graph);
  v21 = [(MPSGraphOperation *)self inputTensors];
  v22 = [v21 objectAtIndexedSubscript:a4];
  v23 = MEMORY[0x1E696AEC0];
  v24 = [(MPSGraphOperation *)self name];
  v25 = [v23 stringWithFormat:@"%@/%@/braodcastGrad", v8, v24];
  v26 = [v20 shapeOfTensor:v22 name:v25];

  v27 = objc_loadWeakRetained(&self->super._graph);
  v28 = MEMORY[0x1E696AEC0];
  v29 = [(MPSGraphOperation *)self name];
  v30 = [v28 stringWithFormat:@"%@/%@/braodcastGrad", v8, v29];
  v31 = [v27 reshapeTensor:v19 withShapeTensor:v26 name:v30];

  return v31;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v702 = a3;
  v703 = a4;
  v10 = a6;
  v11 = 0;
  switch(self->_mathOpType)
  {
    case 0uLL:
      goto LABEL_77;
    case 1uLL:
      WeakRetained = objc_loadWeakRetained(&self->super._graph);
      v53 = [(MPSGraphOperation *)self outputTensors];
      v54 = [v53 objectAtIndexedSubscript:0];
      v306 = MEMORY[0x1E696AEC0];
      v56 = [(MPSGraphOperation *)self name];
      v57 = [v306 stringWithFormat:@"%@/%@/multiplication", v10, v56];
      v58 = [WeakRetained multiplicationWithPrimaryTensor:v54 secondaryTensor:v703 name:v57];
      goto LABEL_52;
    case 2uLL:
      v281 = objc_loadWeakRetained(&self->super._graph);
      v282 = [v281 constantWithScalar:&unk_1F5B77018 shape:268435488 dataType:0.693147181];

      v283 = objc_loadWeakRetained(&self->super._graph);
      v694 = v282;
      v284 = [(MPSGraphOperation *)self outputTensors];
      v285 = [v284 objectAtIndexedSubscript:0];
      v286 = MEMORY[0x1E696AEC0];
      v287 = [(MPSGraphOperation *)self name];
      v288 = [v286 stringWithFormat:@"%@/%@/multiplication_LN2", v10, v287];
      v275 = [v283 multiplicationWithPrimaryTensor:v285 secondaryTensor:v282 name:v288];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v289 = MEMORY[0x1E696AEC0];
      v278 = [(MPSGraphOperation *)self name];
      v279 = [v289 stringWithFormat:@"%@/%@/multiplication", v10, v278];
      v280 = [v276 multiplicationWithPrimaryTensor:v275 secondaryTensor:v703 name:v279];
      goto LABEL_50;
    case 3uLL:
      v337 = objc_loadWeakRetained(&self->super._graph);
      v338 = [v337 constantWithScalar:&unk_1F5B77030 shape:268435488 dataType:2.30258509];

      v339 = objc_loadWeakRetained(&self->super._graph);
      v694 = v338;
      v340 = [(MPSGraphOperation *)self outputTensors];
      v341 = [v340 objectAtIndexedSubscript:0];
      v342 = MEMORY[0x1E696AEC0];
      v343 = [(MPSGraphOperation *)self name];
      v344 = [v342 stringWithFormat:@"%@/%@/multiplication_LN10", v10, v343];
      v275 = [v339 multiplicationWithPrimaryTensor:v341 secondaryTensor:v338 name:v344];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v345 = MEMORY[0x1E696AEC0];
      v278 = [(MPSGraphOperation *)self name];
      v279 = [v345 stringWithFormat:@"%@/%@/multiplication", v10, v278];
      v280 = [v276 multiplicationWithPrimaryTensor:v275 secondaryTensor:v703 name:v279];
      goto LABEL_50;
    case 4uLL:
      WeakRetained = objc_loadWeakRetained(&self->super._graph);
      v53 = [(MPSGraphOperation *)self inputTensors];
      v54 = [v53 objectAtIndexedSubscript:0];
      v346 = MEMORY[0x1E696AEC0];
      v56 = [(MPSGraphOperation *)self name];
      v57 = [v346 stringWithFormat:@"%@/%@/division", v10, v56];
      v58 = [WeakRetained divisionWithPrimaryTensor:v703 secondaryTensor:v54 name:v57];
      goto LABEL_52;
    case 5uLL:
      v290 = objc_loadWeakRetained(&self->super._graph);
      v291 = [v290 constantWithScalar:&unk_1F5B77048 shape:268435488 dataType:0.693147181];

      v292 = objc_loadWeakRetained(&self->super._graph);
      v694 = v291;
      v293 = [(MPSGraphOperation *)self inputTensors];
      v294 = [v293 objectAtIndexedSubscript:0];
      v295 = MEMORY[0x1E696AEC0];
      v296 = [(MPSGraphOperation *)self name];
      v297 = [v295 stringWithFormat:@"%@/%@/multiplication_LN2", v10, v296];
      v275 = [v292 multiplicationWithPrimaryTensor:v294 secondaryTensor:v291 name:v297];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v298 = MEMORY[0x1E696AEC0];
      v278 = [(MPSGraphOperation *)self name];
      v279 = [v298 stringWithFormat:@"%@/%@/division", v10, v278];
      v280 = [v276 divisionWithPrimaryTensor:v703 secondaryTensor:v275 name:v279];
      goto LABEL_50;
    case 6uLL:
      v307 = objc_loadWeakRetained(&self->super._graph);
      v308 = [v307 constantWithScalar:&unk_1F5B77060 shape:268435488 dataType:2.30258509];

      v309 = objc_loadWeakRetained(&self->super._graph);
      v694 = v308;
      v310 = [(MPSGraphOperation *)self inputTensors];
      v311 = [v310 objectAtIndexedSubscript:0];
      v312 = MEMORY[0x1E696AEC0];
      v313 = [(MPSGraphOperation *)self name];
      v314 = [v312 stringWithFormat:@"%@/%@/multiplication_LN10", v10, v313];
      v275 = [v309 multiplicationWithPrimaryTensor:v311 secondaryTensor:v308 name:v314];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v315 = MEMORY[0x1E696AEC0];
      v278 = [(MPSGraphOperation *)self name];
      v279 = [v315 stringWithFormat:@"%@/%@/division", v10, v278];
      v280 = [v276 divisionWithPrimaryTensor:v703 secondaryTensor:v275 name:v279];
      goto LABEL_50;
    case 7uLL:
      v316 = objc_loadWeakRetained(&self->super._graph);
      v317 = [v316 constantWithScalar:&unk_1F5B77078 shape:268435488 dataType:2.0];

      v318 = objc_loadWeakRetained(&self->super._graph);
      v694 = v317;
      v319 = [(MPSGraphOperation *)self inputTensors];
      v320 = [v319 objectAtIndexedSubscript:0];
      v321 = MEMORY[0x1E696AEC0];
      v322 = [(MPSGraphOperation *)self name];
      v323 = [v321 stringWithFormat:@"%@/%@/multiplication_2.0", v10, v322];
      v275 = [v318 multiplicationWithPrimaryTensor:v320 secondaryTensor:v317 name:v323];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v324 = MEMORY[0x1E696AEC0];
      v278 = [(MPSGraphOperation *)self name];
      v279 = [v324 stringWithFormat:@"%@/%@/multiplication", v10, v278];
      v280 = [v276 multiplicationWithPrimaryTensor:v703 secondaryTensor:v275 name:v279];
      goto LABEL_50;
    case 8uLL:
      v364 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v364 constantWithScalar:&unk_1F5B77090 shape:268435488 dataType:0.5];

      v365 = objc_loadWeakRetained(&self->super._graph);
      v366 = [(MPSGraphOperation *)self inputTensors];
      v367 = [v366 objectAtIndexedSubscript:0];
      v368 = MEMORY[0x1E696AEC0];
      v369 = [(MPSGraphOperation *)self name];
      v370 = [v368 stringWithFormat:@"%@/%@/reciprocalSqrt", v10, v369];
      v371 = [v365 reciprocalSquareRootWithTensor:v367 name:v370];

      v372 = objc_loadWeakRetained(&self->super._graph);
      v373 = MEMORY[0x1E696AEC0];
      v374 = [(MPSGraphOperation *)self name];
      v375 = [v373 stringWithFormat:@"%@/%@/multiplication_0.5", v10, v374];
      v376 = [v372 multiplicationWithPrimaryTensor:v371 secondaryTensor:v694 name:v375];

      v96 = objc_loadWeakRetained(&self->super._graph);
      v377 = MEMORY[0x1E696AEC0];
      v118 = [(MPSGraphOperation *)self name];
      v378 = [v377 stringWithFormat:@"%@/%@/multiplication", v10, v118];
      v11 = [v96 multiplicationWithPrimaryTensor:v703 secondaryTensor:v376 name:v378];

      goto LABEL_59;
    case 9uLL:
      v347 = objc_loadWeakRetained(&self->super._graph);
      v348 = [v347 constantWithScalar:&unk_1F5B770A8 shape:268435488 dataType:-1.5];

      v349 = objc_loadWeakRetained(&self->super._graph);
      v682 = v348;
      v693 = [v349 constantWithScalar:&unk_1F5B770C0 shape:268435488 dataType:-0.5];

      v350 = objc_loadWeakRetained(&self->super._graph);
      v351 = [(MPSGraphOperation *)self inputTensors];
      v352 = [v351 objectAtIndexedSubscript:0];
      v353 = MEMORY[0x1E696AEC0];
      v354 = [(MPSGraphOperation *)self name];
      v355 = [v353 stringWithFormat:@"%@/%@/pow_-1.5", v10, v354];
      v356 = [v350 powerWithPrimaryTensor:v352 secondaryTensor:v348 name:v355];

      v357 = objc_loadWeakRetained(&self->super._graph);
      v358 = MEMORY[0x1E696AEC0];
      v359 = [(MPSGraphOperation *)self name];
      v360 = [v358 stringWithFormat:@"%@/%@/multiplication_-0.5", v10, v359];
      v361 = [v357 multiplicationWithPrimaryTensor:v356 secondaryTensor:v693 name:v360];

      v71 = objc_loadWeakRetained(&self->super._graph);
      v362 = MEMORY[0x1E696AEC0];
      v76 = [(MPSGraphOperation *)self name];
      v363 = [v362 stringWithFormat:@"%@/%@/multiplication", v10, v76];
      v11 = [v71 multiplicationWithPrimaryTensor:v703 secondaryTensor:v361 name:v363];

      goto LABEL_55;
    case 0xAuLL:
      v173 = objc_loadWeakRetained(&self->super._graph);
      v174 = MEMORY[0x1E696AEC0];
      v175 = [(MPSGraphOperation *)self name];
      v176 = [v174 stringWithFormat:@"%@/%@/negative", v10, v175];
      v177 = [v173 negativeWithTensor:v703 name:v176];

      v178 = objc_loadWeakRetained(&self->super._graph);
      v695 = v177;
      v179 = [(MPSGraphOperation *)self inputTensors];
      v180 = [v179 objectAtIndexedSubscript:0];
      v181 = MEMORY[0x1E696AEC0];
      v182 = [(MPSGraphOperation *)self name];
      v183 = [v181 stringWithFormat:@"%@/%@/square", v10, v182];
      v184 = [v178 squareWithTensor:v180 name:v183];

      v185 = objc_loadWeakRetained(&self->super._graph);
      v186 = MEMORY[0x1E696AEC0];
      v187 = [(MPSGraphOperation *)self name];
      v188 = [v186 stringWithFormat:@"%@/%@/multiplication", v10, v187];
      v11 = [v185 multiplicationWithPrimaryTensor:v184 secondaryTensor:v695 name:v188];

      goto LABEL_112;
    case 0xBuLL:
      v299 = objc_loadWeakRetained(&self->super._graph);
      v300 = [(MPSGraphOperation *)self inputTensors];
      v301 = [v300 objectAtIndexedSubscript:0];
      v302 = MEMORY[0x1E696AEC0];
      v303 = [(MPSGraphOperation *)self name];
      v304 = [v302 stringWithFormat:@"%@/%@/sign", v10, v303];
      v135 = [v299 signWithTensor:v301 name:v304];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v305 = MEMORY[0x1E696AEC0];
      v138 = [(MPSGraphOperation *)self name];
      v139 = [v305 stringWithFormat:@"%@/%@/multiplication", v10, v138];
      v140 = [v136 multiplicationWithPrimaryTensor:v703 secondaryTensor:v135 name:v139];
      goto LABEL_70;
    case 0xCuLL:
      v262 = [(MPSGraphOperation *)self inputTensors];
      v263 = [v262 objectAtIndexedSubscript:0];
      [v263 dataType];

      v264 = [(MPSGraphOperation *)self inputTensors];
      v265 = [v264 objectAtIndexedSubscript:0];
      v266 = [v265 dataType];

      if ((v266 & 0x1000000) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v267 = objc_loadWeakRetained(&self->super._graph);
      v268 = [v267 constantWithScalar:&unk_1F5B770D8 shape:268435488 dataType:2.0];

      v269 = objc_loadWeakRetained(&self->super._graph);
      v694 = v268;
      v270 = [(MPSGraphOperation *)self inputTensors];
      v271 = [v270 objectAtIndexedSubscript:0];
      v272 = MEMORY[0x1E696AEC0];
      v273 = [(MPSGraphOperation *)self name];
      v274 = [v272 stringWithFormat:@"%@/%@/multiplication_2.0", v10, v273];
      v275 = [v269 multiplicationWithPrimaryTensor:v271 secondaryTensor:v268 name:v274];

      v276 = objc_loadWeakRetained(&self->super._graph);
      v277 = MEMORY[0x1E696AEC0];
      v278 = [(MPSGraphOperation *)self name];
      v279 = [v277 stringWithFormat:@"%@/%@/multiplication", v10, v278];
      v280 = [v276 multiplicationWithPrimaryTensor:v703 secondaryTensor:v275 name:v279];
LABEL_50:
      v11 = v280;

      goto LABEL_64;
    case 0xDuLL:
      v13 = objc_loadWeakRetained(&self->super._graph);
      v141 = MEMORY[0x1E696AEC0];
      v142 = [(MPSGraphOperation *)self name];
      v143 = [v141 stringWithFormat:@"%@/%@/negative", v10, v142];
      v11 = [v13 negativeWithTensor:v703 name:v143];

      goto LABEL_111;
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x47uLL:
      v12 = objc_loadWeakRetained(&self->super._graph);
      v13 = [v12 constantWithScalar:objc_msgSend(v703 dataType:{"dataType"), 0.0}];

      v14 = objc_loadWeakRetained(&self->super._graph);
      v15 = [v14 shapeOfTensor:v703 name:v10];

      v16 = objc_loadWeakRetained(&self->super._graph);
      v11 = [v16 broadcastTensor:v13 toShapeTensor:v15 name:v10];

      goto LABEL_111;
    case 0xFuLL:
      WeakRetained = objc_loadWeakRetained(&self->super._graph);
      v53 = [(MPSGraphOperation *)self outputTensors];
      v54 = [v53 objectAtIndexedSubscript:0];
      v261 = MEMORY[0x1E696AEC0];
      v56 = [(MPSGraphOperation *)self name];
      v57 = [v261 stringWithFormat:@"%@/%@/multiplication", v10, v56];
      v58 = [WeakRetained multiplicationWithPrimaryTensor:v703 secondaryTensor:v54 name:v57];
      goto LABEL_52;
    case 0x14uLL:
      v423 = objc_loadWeakRetained(&self->super._graph);
      v424 = [(MPSGraphOperation *)self inputTensors];
      v425 = [v424 objectAtIndexedSubscript:0];
      v426 = MEMORY[0x1E696AEC0];
      v427 = [(MPSGraphOperation *)self name];
      v428 = [v426 stringWithFormat:@"%@/%@/cos", v10, v427];
      v135 = [v423 cosWithTensor:v425 name:v428];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v429 = MEMORY[0x1E696AEC0];
      v138 = [(MPSGraphOperation *)self name];
      v139 = [v429 stringWithFormat:@"%@/%@/multiplication", v10, v138];
      v140 = [v136 multiplicationWithPrimaryTensor:v703 secondaryTensor:v135 name:v139];
      goto LABEL_70;
    case 0x15uLL:
      v42 = objc_loadWeakRetained(&self->super._graph);
      v43 = [(MPSGraphOperation *)self inputTensors];
      v44 = [v43 objectAtIndexedSubscript:0];
      v45 = MEMORY[0x1E696AEC0];
      v46 = [(MPSGraphOperation *)self name];
      v47 = [v45 stringWithFormat:@"%@/%@/cos", v10, v46];
      WeakRetained = [v42 sinWithTensor:v44 name:v47];

      v49 = objc_loadWeakRetained(&self->super._graph);
      v50 = MEMORY[0x1E696AEC0];
      v51 = [(MPSGraphOperation *)self name];
      v52 = [v50 stringWithFormat:@"%@/%@/negative", v10, v51];
      v53 = [v49 negativeWithTensor:WeakRetained name:v52];

      v54 = objc_loadWeakRetained(&self->super._graph);
      v55 = MEMORY[0x1E696AEC0];
      v56 = [(MPSGraphOperation *)self name];
      v57 = [v55 stringWithFormat:@"%@/%@/multiplication", v10, v56];
      v58 = [v54 multiplicationWithPrimaryTensor:v703 secondaryTensor:v53 name:v57];
LABEL_52:
      v11 = v58;

      goto LABEL_53;
    case 0x16uLL:
      v442 = objc_loadWeakRetained(&self->super._graph);
      v443 = [(MPSGraphOperation *)self inputTensors];
      v444 = [v443 objectAtIndexedSubscript:0];
      v445 = MEMORY[0x1E696AEC0];
      v446 = [(MPSGraphOperation *)self name];
      v447 = [v445 stringWithFormat:@"%@/%@/cos", v10, v446];
      WeakRetained = [v442 cosWithTensor:v444 name:v447];

      v448 = objc_loadWeakRetained(&self->super._graph);
      v449 = MEMORY[0x1E696AEC0];
      v450 = [(MPSGraphOperation *)self name];
      v451 = [v449 stringWithFormat:@"%@/%@/reciprocal", v10, v450];
      v452 = [v448 reciprocalWithTensor:WeakRetained name:v451];

      v453 = objc_loadWeakRetained(&self->super._graph);
      v454 = MEMORY[0x1E696AEC0];
      v455 = [(MPSGraphOperation *)self name];
      v456 = [v454 stringWithFormat:@"%@/%@/square", v10, v455];
      v457 = [v453 squareWithTensor:v452 name:v456];

      v458 = objc_loadWeakRetained(&self->super._graph);
      v459 = MEMORY[0x1E696AEC0];
      v460 = [(MPSGraphOperation *)self name];
      v461 = [v459 stringWithFormat:@"%@/%@/multiplication", v10, v460];
      v11 = [v458 multiplicationWithPrimaryTensor:v703 secondaryTensor:v457 name:v461];

      goto LABEL_53;
    case 0x17uLL:
      v129 = objc_loadWeakRetained(&self->super._graph);
      v130 = [(MPSGraphOperation *)self inputTensors];
      v131 = [v130 objectAtIndexedSubscript:0];
      v132 = MEMORY[0x1E696AEC0];
      v133 = [(MPSGraphOperation *)self name];
      v134 = [v132 stringWithFormat:@"%@/%@/cosh", v10, v133];
      v135 = [v129 coshWithTensor:v131 name:v134];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v137 = MEMORY[0x1E696AEC0];
      v138 = [(MPSGraphOperation *)self name];
      v139 = [v137 stringWithFormat:@"%@/%@/multiplication", v10, v138];
      v140 = [v136 multiplicationWithPrimaryTensor:v703 secondaryTensor:v135 name:v139];
      goto LABEL_70;
    case 0x18uLL:
      v477 = objc_loadWeakRetained(&self->super._graph);
      v478 = [(MPSGraphOperation *)self inputTensors];
      v479 = [v478 objectAtIndexedSubscript:0];
      v480 = MEMORY[0x1E696AEC0];
      v481 = [(MPSGraphOperation *)self name];
      v482 = [v480 stringWithFormat:@"%@/%@/sinh", v10, v481];
      v135 = [v477 sinhWithTensor:v479 name:v482];

      v136 = objc_loadWeakRetained(&self->super._graph);
      v483 = MEMORY[0x1E696AEC0];
      v138 = [(MPSGraphOperation *)self name];
      v139 = [v483 stringWithFormat:@"%@/%@/multiplication", v10, v138];
      v140 = [v136 multiplicationWithPrimaryTensor:v703 secondaryTensor:v135 name:v139];
LABEL_70:
      v11 = v140;

      goto LABEL_112;
    case 0x19uLL:
      v403 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v403 constantWithScalar:&unk_1F5B770F0 shape:268435488 dataType:1.0];

      v404 = objc_loadWeakRetained(&self->super._graph);
      v405 = [(MPSGraphOperation *)self inputTensors];
      v406 = [v405 objectAtIndexedSubscript:0];
      v407 = MEMORY[0x1E696AEC0];
      v408 = [(MPSGraphOperation *)self name];
      v409 = [v407 stringWithFormat:@"%@/%@/tanh", v10, v408];
      v96 = [v404 tanhWithTensor:v406 name:v409];

      v410 = objc_loadWeakRetained(&self->super._graph);
      v411 = MEMORY[0x1E696AEC0];
      v412 = [(MPSGraphOperation *)self name];
      v413 = [v411 stringWithFormat:@"%@/%@/square", v10, v412];
      v118 = [v410 squareWithTensor:v96 name:v413];

      v414 = objc_loadWeakRetained(&self->super._graph);
      v415 = MEMORY[0x1E696AEC0];
      v416 = [(MPSGraphOperation *)self name];
      v417 = [v415 stringWithFormat:@"%@/%@/subtraction_1", v10, v416];
      v418 = [v414 subtractionWithPrimaryTensor:v694 secondaryTensor:v118 name:v417];

      v419 = objc_loadWeakRetained(&self->super._graph);
      v420 = MEMORY[0x1E696AEC0];
      v421 = [(MPSGraphOperation *)self name];
      v422 = [v420 stringWithFormat:@"%@/%@/multiplication", v10, v421];
      v11 = [v419 multiplicationWithPrimaryTensor:v703 secondaryTensor:v418 name:v422];

      goto LABEL_59;
    case 0x1AuLL:
      v379 = objc_loadWeakRetained(&self->super._graph);
      v380 = [v379 constantWithScalar:&unk_1F5B77108 shape:268435488 dataType:1.0];

      v381 = objc_loadWeakRetained(&self->super._graph);
      v686 = v380;
      v382 = [(MPSGraphOperation *)self inputTensors];
      v383 = [v382 objectAtIndexedSubscript:0];
      v384 = MEMORY[0x1E696AEC0];
      v385 = [(MPSGraphOperation *)self name];
      v386 = [v384 stringWithFormat:@"%@/%@/square", v10, v385];
      v697 = [v381 squareWithTensor:v383 name:v386];

      v387 = objc_loadWeakRetained(&self->super._graph);
      v388 = MEMORY[0x1E696AEC0];
      v389 = [(MPSGraphOperation *)self name];
      v390 = [v388 stringWithFormat:@"%@/%@/subtraction", v10, v389];
      v391 = [v387 subtractionWithPrimaryTensor:v380 secondaryTensor:v697 name:v390];

      v392 = objc_loadWeakRetained(&self->super._graph);
      v393 = [(MPSGraphOperation *)self inputTensors];
      v394 = [v393 objectAtIndexedSubscript:0];
      v395 = MEMORY[0x1E696AEC0];
      v396 = [(MPSGraphOperation *)self name];
      v397 = [v395 stringWithFormat:@"%@/%@/reciprocalSquareRoot", v10, v396];
      v398 = [v392 reciprocalSquareRootWithTensor:v394 name:v397];

      v399 = objc_loadWeakRetained(&self->super._graph);
      v400 = MEMORY[0x1E696AEC0];
      v401 = [(MPSGraphOperation *)self name];
      v402 = [v400 stringWithFormat:@"%@/%@/multiplication", v10, v401];
      v11 = [v399 multiplicationWithPrimaryTensor:v703 secondaryTensor:v398 name:v402];

      goto LABEL_112;
    case 0x1BuLL:
      v59 = objc_loadWeakRetained(&self->super._graph);
      v60 = [v59 constantWithScalar:&unk_1F5B77120 shape:268435488 dataType:1.0];

      v61 = objc_loadWeakRetained(&self->super._graph);
      v682 = v60;
      v62 = [(MPSGraphOperation *)self inputTensors];
      v63 = [v62 objectAtIndexedSubscript:0];
      v64 = MEMORY[0x1E696AEC0];
      v65 = [(MPSGraphOperation *)self name];
      v66 = [v64 stringWithFormat:@"%@/%@/square", v10, v65];
      v693 = [v61 squareWithTensor:v63 name:v66];

      v67 = objc_loadWeakRetained(&self->super._graph);
      v68 = MEMORY[0x1E696AEC0];
      v69 = [(MPSGraphOperation *)self name];
      v70 = [v68 stringWithFormat:@"%@/%@/subtraction", v10, v69];
      v71 = [v67 subtractionWithPrimaryTensor:v60 secondaryTensor:v693 name:v70];

      v72 = objc_loadWeakRetained(&self->super._graph);
      v73 = MEMORY[0x1E696AEC0];
      v74 = [(MPSGraphOperation *)self name];
      v75 = [v73 stringWithFormat:@"%@/%@/reciprocalSquareRoot", v10, v74];
      v76 = [v72 reciprocalSquareRootWithTensor:v71 name:v75];

      v77 = objc_loadWeakRetained(&self->super._graph);
      v78 = MEMORY[0x1E696AEC0];
      v79 = [(MPSGraphOperation *)self name];
      v80 = [v78 stringWithFormat:@"%@/%@/multiplication", v10, v79];
      v81 = [v77 multiplicationWithPrimaryTensor:v703 secondaryTensor:v76 name:v80];

      v82 = objc_loadWeakRetained(&self->super._graph);
      v83 = MEMORY[0x1E696AEC0];
      v84 = [(MPSGraphOperation *)self name];
      v85 = [v83 stringWithFormat:@"%@/%@/negative", v10, v84];
      v11 = [v82 negativeWithTensor:v81 name:v85];

LABEL_55:
      goto LABEL_72;
    case 0x1CuLL:
      v89 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v89 constantWithScalar:&unk_1F5B77138 shape:268435488 dataType:1.0];

      v90 = objc_loadWeakRetained(&self->super._graph);
      v91 = [(MPSGraphOperation *)self inputTensors];
      v92 = [v91 objectAtIndexedSubscript:0];
      v93 = MEMORY[0x1E696AEC0];
      v94 = [(MPSGraphOperation *)self name];
      v95 = [v93 stringWithFormat:@"%@/%@/square", v10, v94];
      v96 = [v90 squareWithTensor:v92 name:v95];

      v97 = objc_loadWeakRetained(&self->super._graph);
      v98 = MEMORY[0x1E696AEC0];
      v99 = [(MPSGraphOperation *)self name];
      v100 = [v98 stringWithFormat:@"%@/%@/addition", v10, v99];
      v101 = [v97 additionWithPrimaryTensor:v694 secondaryTensor:v96 name:v100];

      v102 = objc_loadWeakRetained(&self->super._graph);
      v103 = MEMORY[0x1E696AEC0];
      v104 = [(MPSGraphOperation *)self name];
      v105 = [v103 stringWithFormat:@"%@/%@/division", v10, v104];
      v106 = [v102 divisionWithPrimaryTensor:v703 secondaryTensor:v101 name:v105];
      goto LABEL_62;
    case 0x1DuLL:
      v157 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v157 constantWithScalar:&unk_1F5B77150 shape:268435488 dataType:1.0];

      v158 = objc_loadWeakRetained(&self->super._graph);
      v159 = [(MPSGraphOperation *)self inputTensors];
      v160 = [v159 objectAtIndexedSubscript:0];
      v161 = MEMORY[0x1E696AEC0];
      v162 = [(MPSGraphOperation *)self name];
      v163 = [v161 stringWithFormat:@"%@/%@/square", v10, v162];
      v96 = [v158 squareWithTensor:v160 name:v163];

      v164 = objc_loadWeakRetained(&self->super._graph);
      v165 = MEMORY[0x1E696AEC0];
      v166 = [(MPSGraphOperation *)self name];
      v167 = [v165 stringWithFormat:@"%@/%@/addition", v10, v166];
      v118 = [v164 additionWithPrimaryTensor:v694 secondaryTensor:v96 name:v167];

      v168 = objc_loadWeakRetained(&self->super._graph);
      v169 = MEMORY[0x1E696AEC0];
      v170 = [(MPSGraphOperation *)self name];
      v171 = [v169 stringWithFormat:@"%@/%@/rsqrt", v10, v170];
      v123 = [v168 reciprocalSquareRootWithTensor:v118 name:v171];

      v124 = objc_loadWeakRetained(&self->super._graph);
      v172 = MEMORY[0x1E696AEC0];
      v126 = [(MPSGraphOperation *)self name];
      v127 = [v172 stringWithFormat:@"%@/%@/multiplication", v10, v126];
      v128 = [v124 multiplicationWithPrimaryTensor:v703 secondaryTensor:v123 name:v127];
      goto LABEL_27;
    case 0x1EuLL:
      v107 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v107 constantWithScalar:&unk_1F5B77168 shape:268435488 dataType:1.0];

      v108 = objc_loadWeakRetained(&self->super._graph);
      v109 = [(MPSGraphOperation *)self inputTensors];
      v110 = [v109 objectAtIndexedSubscript:0];
      v111 = MEMORY[0x1E696AEC0];
      v112 = [(MPSGraphOperation *)self name];
      v113 = [v111 stringWithFormat:@"%@/%@/square", v10, v112];
      v96 = [v108 squareWithTensor:v110 name:v113];

      v114 = objc_loadWeakRetained(&self->super._graph);
      v115 = MEMORY[0x1E696AEC0];
      v116 = [(MPSGraphOperation *)self name];
      v117 = [v115 stringWithFormat:@"%@/%@/subtraction", v10, v116];
      v118 = [v114 subtractionWithPrimaryTensor:v96 secondaryTensor:v694 name:v117];

      v119 = objc_loadWeakRetained(&self->super._graph);
      v120 = MEMORY[0x1E696AEC0];
      v121 = [(MPSGraphOperation *)self name];
      v122 = [v120 stringWithFormat:@"%@/%@/rsqrt", v10, v121];
      v123 = [v119 reciprocalSquareRootWithTensor:v118 name:v122];

      v124 = objc_loadWeakRetained(&self->super._graph);
      v125 = MEMORY[0x1E696AEC0];
      v126 = [(MPSGraphOperation *)self name];
      v127 = [v125 stringWithFormat:@"%@/%@/multiplication", v10, v126];
      v128 = [v124 multiplicationWithPrimaryTensor:v703 secondaryTensor:v123 name:v127];
LABEL_27:
      v11 = v128;

LABEL_59:
      goto LABEL_63;
    case 0x1FuLL:
      v430 = objc_loadWeakRetained(&self->super._graph);
      v694 = [v430 constantWithScalar:&unk_1F5B77180 shape:268435488 dataType:1.0];

      v431 = objc_loadWeakRetained(&self->super._graph);
      v432 = [(MPSGraphOperation *)self inputTensors];
      v433 = [v432 objectAtIndexedSubscript:0];
      v434 = MEMORY[0x1E696AEC0];
      v435 = [(MPSGraphOperation *)self name];
      v436 = [v434 stringWithFormat:@"%@/%@/square", v10, v435];
      v96 = [v431 squareWithTensor:v433 name:v436];

      v437 = objc_loadWeakRetained(&self->super._graph);
      v438 = MEMORY[0x1E696AEC0];
      v439 = [(MPSGraphOperation *)self name];
      v440 = [v438 stringWithFormat:@"%@/%@/subtraction", v10, v439];
      v101 = [v437 subtractionWithPrimaryTensor:v96 secondaryTensor:v694 name:v440];

      v102 = objc_loadWeakRetained(&self->super._graph);
      v441 = MEMORY[0x1E696AEC0];
      v104 = [(MPSGraphOperation *)self name];
      v105 = [v441 stringWithFormat:@"%@/%@/division", v10, v104];
      v106 = [v102 divisionWithPrimaryTensor:v703 secondaryTensor:v101 name:v105];
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
      v485 = [(MPSGraphOperation *)self inputTensors];
      v486 = [v485 objectAtIndexedSubscript:0];
      v487 = MEMORY[0x1E696AEC0];
      v488 = [(MPSGraphOperation *)self name];
      v489 = [v487 stringWithFormat:@"%@/%@/square", v10, v488];
      v490 = [v484 squareWithTensor:v486 name:v489];

      v491 = objc_loadWeakRetained(&self->super._graph);
      v492 = MEMORY[0x1E696AEC0];
      v682 = v490;
      v493 = [(MPSGraphOperation *)self name];
      v494 = [v492 stringWithFormat:@"%@/%@/negative", v10, v493];
      v495 = [v491 negativeWithTensor:v490 name:v494];

      v496 = objc_loadWeakRetained(&self->super._graph);
      v497 = MEMORY[0x1E696AEC0];
      v498 = [(MPSGraphOperation *)self name];
      v499 = [v497 stringWithFormat:@"%@/%@/negative", v10, v498];
      v500 = [v496 exponentWithTensor:v495 name:v499];

      v501 = objc_loadWeakRetained(&self->super._graph);
      v502 = [v501 constantWithScalar:&unk_1F5B771B0 shape:268435488 dataType:1.12837917];

      v503 = objc_loadWeakRetained(&self->super._graph);
      v504 = MEMORY[0x1E696AEC0];
      v505 = [(MPSGraphOperation *)self name];
      v506 = [v504 stringWithFormat:@"%@/%@/multiplication", v10, v505];
      v507 = [v503 multiplicationWithPrimaryTensor:v500 secondaryTensor:v502 name:v506];

      v508 = objc_loadWeakRetained(&self->super._graph);
      v509 = MEMORY[0x1E696AEC0];
      v510 = [(MPSGraphOperation *)self name];
      v511 = [v509 stringWithFormat:@"%@/%@/multiplication_1", v10, v510];
      v11 = [v508 multiplicationWithPrimaryTensor:v703 secondaryTensor:v507 name:v511];

LABEL_72:
      goto LABEL_112;
    case 0x27uLL:
      v152 = [(MPSGraphOperation *)self inputTensors];
      v153 = [v152 objectAtIndexedSubscript:0];
      [v153 dataType];

      v154 = [(MPSGraphOperation *)self inputTensors];
      v155 = [v154 objectAtIndexedSubscript:0];
      v156 = [v155 dataType];

      if ((v156 & 0x1000000) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_77;
    case 0x28uLL:
      v540 = [(MPSGraphOperation *)self inputTensors];
      v541 = [v540 objectAtIndexedSubscript:0];
      v542 = [v541 dataType];

      if ((v542 & 0x1000000) == 0)
      {
LABEL_77:
        v11 = v703;
        goto LABEL_112;
      }

      v587 = objc_loadWeakRetained(&self->super._graph);
      v588 = [(MPSGraphOperation *)self inputTensors];
      v589 = [v588 objectAtIndexedSubscript:0];
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
      v592 = [v703 shape];
      v593 = MEMORY[0x1E696AEC0];
      v594 = [(MPSGraphOperation *)self name];
      v595 = [v593 stringWithFormat:@"%@/%@/broadcastZero", v10, v594];
      v596 = [v591 broadcastTensor:WeakRetained toShape:v592 name:v595];

      v597 = objc_loadWeakRetained(&self->super._graph);
      v598 = [v597 complexTensorWithRealTensor:v703 imaginaryTensor:v596 name:v10];
      goto LABEL_97;
    case 0x29uLL:
      v543 = [(MPSGraphOperation *)self inputTensors];
      v544 = [v543 objectAtIndexedSubscript:0];
      v545 = [v544 dataType];

      if ((v545 & 0x1000000) != 0)
      {
        v599 = objc_loadWeakRetained(&self->super._graph);
        v600 = [(MPSGraphOperation *)self inputTensors];
        v601 = [v600 objectAtIndexedSubscript:0];
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
        v604 = [v703 shape];
        v605 = MEMORY[0x1E696AEC0];
        v606 = [(MPSGraphOperation *)self name];
        v607 = [v605 stringWithFormat:@"%@/%@/broadcastZero", v10, v606];
        v596 = [v603 broadcastTensor:WeakRetained toShape:v604 name:v607];

        v597 = objc_loadWeakRetained(&self->super._graph);
        v598 = [v597 complexTensorWithRealTensor:v596 imaginaryTensor:v703 name:v10];
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
      v18 = v703;
      v86 = [(MPSGraphOperation *)self inputTensors];
      [v86 objectAtIndexedSubscript:a5];

      v87 = [(MPSGraphOperation *)self inputTensors];
      v88 = [v87 objectAtIndexedSubscript:a5];

      if (v88 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_22;
    case 0x2BuLL:
      v18 = v703;
      v144 = [(MPSGraphOperation *)self inputTensors];
      [v144 objectAtIndexedSubscript:a5];

      v145 = [(MPSGraphOperation *)self inputTensors];
      v146 = [v145 objectAtIndexedSubscript:a5];

      if (v146 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (a5 == 1)
      {
        v147 = objc_loadWeakRetained(&self->super._graph);
        v148 = MEMORY[0x1E696AEC0];
        v149 = [(MPSGraphOperation *)self name];
        v150 = [v148 stringWithFormat:@"%@/%@/negative", v10, v149];
        v151 = [v147 negativeWithTensor:v18 name:v150];

        v18 = v151;
      }

      goto LABEL_22;
    case 0x2CuLL:
      v325 = v703;
      v326 = [(MPSGraphOperation *)self inputTensors];
      [v326 objectAtIndexedSubscript:a5];

      v327 = [(MPSGraphOperation *)self inputTensors];
      v328 = [v327 objectAtIndexedSubscript:a5];

      if (v328 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v329 = objc_loadWeakRetained(&self->super._graph);
      v330 = [(MPSGraphOperation *)self inputTensors];
      v331 = [v330 objectAtIndexedSubscript:a5 == 0];
      v332 = MEMORY[0x1E696AEC0];
      v333 = [(MPSGraphOperation *)self name];
      v334 = [v332 stringWithFormat:@"%@/%@/multiplication", v10, v333];
      v335 = [v329 multiplicationWithPrimaryTensor:v325 secondaryTensor:v331 name:v334];

      v336 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v335 inputIndex:a5 name:v10];
      goto LABEL_100;
    case 0x2DuLL:
      v512 = v703;
      v513 = [(MPSGraphOperation *)self inputTensors];
      v699 = v512;
      [v513 objectAtIndexedSubscript:a5];

      v514 = [(MPSGraphOperation *)self inputTensors];
      v515 = [v514 objectAtIndexedSubscript:a5];

      if (v515 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v516 = objc_loadWeakRetained(&self->super._graph);
      [(MPSGraphOperation *)self inputTensors];
      if (a5)
        v517 = {;
        v518 = [v517 objectAtIndexedSubscript:1];
        v519 = MEMORY[0x1E696AEC0];
        v520 = [(MPSGraphOperation *)self name];
        v521 = [v519 stringWithFormat:@"%@/%@/square", v10, v520];
        v522 = [v516 squareWithTensor:v518 name:v521];

        v523 = objc_loadWeakRetained(&self->super._graph);
        v680 = v522;
        v524 = [(MPSGraphOperation *)self inputTensors];
        v525 = [v524 objectAtIndexedSubscript:0];
        v526 = MEMORY[0x1E696AEC0];
        v527 = [(MPSGraphOperation *)self name];
        v528 = [v526 stringWithFormat:@"%@/%@/division", v10, v527];
        v688 = [v523 divisionWithPrimaryTensor:v525 secondaryTensor:v522 name:v528];

        v529 = objc_loadWeakRetained(&self->super._graph);
        v530 = MEMORY[0x1E696AEC0];
        v531 = [(MPSGraphOperation *)self name];
        v532 = [v530 stringWithFormat:@"%@/%@/multiplication", v10, v531];
        v533 = [v529 multiplicationWithPrimaryTensor:v512 secondaryTensor:v688 name:v532];

        v534 = objc_loadWeakRetained(&self->super._graph);
        v535 = MEMORY[0x1E696AEC0];
        v536 = [(MPSGraphOperation *)self name];
        v537 = v688;
        v538 = [v535 stringWithFormat:@"%@/%@/negative", v10, v536];
        v13 = [v534 negativeWithTensor:v533 name:v538];
        v539 = v533;
        v516 = v680;
      }

      else
        v537 = {;
        v539 = v699;
        v534 = [v537 objectAtIndexedSubscript:1];
        v637 = MEMORY[0x1E696AEC0];
        v536 = [(MPSGraphOperation *)self name];
        v538 = [v637 stringWithFormat:@"%@/%@/division", v10, v536];
        v13 = [v516 divisionWithPrimaryTensor:v699 secondaryTensor:v534 name:v538];
      }

      v17 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v13 inputIndex:a5 name:v10];
      goto LABEL_110;
    case 0x2EuLL:
      v18 = v703;
      v19 = [(MPSGraphOperation *)self inputTensors];
      [v19 objectAtIndexedSubscript:a5];

      v20 = [(MPSGraphOperation *)self inputTensors];
      v21 = [v20 objectAtIndexedSubscript:a5];

      if (v21 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (a5 == 1)
      {
        v675 = objc_loadWeakRetained(&self->super._graph);
        v670 = [(MPSGraphOperation *)self inputTensors];
        v22 = [v670 objectAtIndexedSubscript:0];
        v23 = [(MPSGraphOperation *)self inputTensors];
        v24 = [v23 objectAtIndexedSubscript:1];
        v25 = MEMORY[0x1E696AEC0];
        v26 = [(MPSGraphOperation *)self name];
        v27 = [v25 stringWithFormat:@"%@/%@/division", v10, v26];
        v692 = [v675 divisionWithPrimaryTensor:v22 secondaryTensor:v24 name:v27];

        v28 = objc_loadWeakRetained(&self->super._graph);
        v29 = MEMORY[0x1E696AEC0];
        v30 = [(MPSGraphOperation *)self name];
        v31 = [v29 stringWithFormat:@"%@/%@/floor", v10, v30];
        v32 = [v28 floorWithTensor:v692 name:v31];

        v33 = objc_loadWeakRetained(&self->super._graph);
        v34 = MEMORY[0x1E696AEC0];
        v35 = [(MPSGraphOperation *)self name];
        v36 = [v34 stringWithFormat:@"%@/%@/multiplication", v10, v35];
        v37 = [v33 multiplicationWithPrimaryTensor:v18 secondaryTensor:v32 name:v36];

        v38 = objc_loadWeakRetained(&self->super._graph);
        v39 = MEMORY[0x1E696AEC0];
        v40 = [(MPSGraphOperation *)self name];
        v41 = [v39 stringWithFormat:@"%@/%@/negative", v10, v40];
        v18 = [v38 negativeWithTensor:v37 name:v41];
      }

LABEL_22:
      v11 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v18 inputIndex:a5 name:v10];

      goto LABEL_112;
    case 0x2FuLL:
      v189 = v703;
      v190 = [(MPSGraphOperation *)self inputTensors];
      [v190 objectAtIndexedSubscript:a5];

      v191 = [(MPSGraphOperation *)self inputTensors];
      v192 = [v191 objectAtIndexedSubscript:a5];

      if (v192 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v193 = objc_loadWeakRetained(&self->super._graph);
      v194 = v193;
      if (a5)
      {
        v195 = [(MPSGraphOperation *)self inputTensors];
        v196 = [v195 objectAtIndexedSubscript:0];
        v197 = MEMORY[0x1E696AEC0];
        v198 = [(MPSGraphOperation *)self name];
        v199 = [v197 stringWithFormat:@"%@/%@/logarithm", v10, v198];
        v683 = [v194 logarithmWithTensor:v196 name:v199];

        v200 = objc_loadWeakRetained(&self->super._graph);
        v201 = MEMORY[0x1E696AEC0];
        v202 = [(MPSGraphOperation *)self name];
        v203 = [v201 stringWithFormat:@"%@/%@/multiplication", v10, v202];
        v204 = [v200 multiplicationWithPrimaryTensor:v189 secondaryTensor:v683 name:v203];

        v676 = objc_loadWeakRetained(&self->super._graph);
        v671 = [(MPSGraphOperation *)self outputTensors];
        v205 = [v671 objectAtIndexedSubscript:0];
        v206 = MEMORY[0x1E696AEC0];
        v207 = [(MPSGraphOperation *)self name];
        v208 = [v206 stringWithFormat:@"%@/%@/multiplication2", v10, v207];
        [v676 multiplicationWithPrimaryTensor:v204 secondaryTensor:v205 name:v208];
      }

      else
      {
        v667 = v189;
        v683 = [v193 constantWithScalar:&unk_1F5B771C8 shape:268435488 dataType:1.0];

        v608 = objc_loadWeakRetained(&self->super._graph);
        v609 = [(MPSGraphOperation *)self inputTensors];
        v610 = [v609 objectAtIndexedSubscript:1];
        v611 = MEMORY[0x1E696AEC0];
        v612 = [(MPSGraphOperation *)self name];
        v613 = [v611 stringWithFormat:@"%@/%@/subraction", v10, v612];
        v676 = [v608 subtractionWithPrimaryTensor:v610 secondaryTensor:v683 name:v613];

        v614 = objc_loadWeakRetained(&self->super._graph);
        v615 = [(MPSGraphOperation *)self inputTensors];
        v616 = [v615 objectAtIndexedSubscript:0];
        v617 = MEMORY[0x1E696AEC0];
        v618 = [(MPSGraphOperation *)self name];
        v619 = [v617 stringWithFormat:@"%@/%@/power", v10, v618];
        v671 = [v614 powerWithPrimaryTensor:v616 secondaryTensor:v676 name:v619];

        v620 = objc_loadWeakRetained(&self->super._graph);
        v621 = [(MPSGraphOperation *)self inputTensors];
        v622 = [v621 objectAtIndexedSubscript:1];
        v623 = MEMORY[0x1E696AEC0];
        v624 = [(MPSGraphOperation *)self name];
        v625 = [v623 stringWithFormat:@"%@/%@/multiplication", v10, v624];
        v204 = [v620 multiplicationWithPrimaryTensor:v667 secondaryTensor:v622 name:v625];

        v205 = objc_loadWeakRetained(&self->super._graph);
        v626 = MEMORY[0x1E696AEC0];
        v207 = [(MPSGraphOperation *)self name];
        v208 = [v626 stringWithFormat:@"%@/%@/multiplication2", v10, v207];
        [v205 multiplicationWithPrimaryTensor:v671 secondaryTensor:v204 name:v208];
      }
      v627 = ;

      v335 = v627;
      v336 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v627 inputIndex:a5 name:v10];
LABEL_100:
      v11 = v336;

      goto LABEL_112;
    case 0x30uLL:
      v246 = v703;
      v247 = [(MPSGraphOperation *)self inputTensors];
      v696 = v246;
      [v247 objectAtIndexedSubscript:a5];

      v248 = [(MPSGraphOperation *)self inputTensors];
      v249 = [v248 objectAtIndexedSubscript:a5];

      if (v249 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v250 = objc_loadWeakRetained(&self->super._graph);
      v678 = [(MPSGraphOperation *)self inputTensors];
      v251 = [v678 objectAtIndexedSubscript:0];
      [(MPSGraphOperation *)self inputTensors];
      if (a5)
        v252 = {;
        v253 = [v252 objectAtIndexedSubscript:1];
        v254 = MEMORY[0x1E696AEC0];
        v255 = [(MPSGraphOperation *)self name];
        v256 = [v254 stringWithFormat:@"%@/%@/greaterThanOrEqualTo", v10, v255];
        v685 = [v250 greaterThanOrEqualToWithPrimaryTensor:v251 secondaryTensor:v253 name:v256];
      }

      else
        v628 = {;
        v629 = [v628 objectAtIndexedSubscript:1];
        v630 = MEMORY[0x1E696AEC0];
        v631 = [(MPSGraphOperation *)self name];
        v632 = [v630 stringWithFormat:@"%@/%@/lessThan", v10, v631];
        v685 = [v250 lessThanWithPrimaryTensor:v251 secondaryTensor:v629 name:v632];
      }

      v257 = objc_loadWeakRetained(&self->super._graph);
      v258 = MEMORY[0x1E696AEC0];
      v259 = [(MPSGraphOperation *)self name];
      v260 = [v258 stringWithFormat:@"%@/%@/multiplication", v10, v259];
      v13 = [v257 multiplicationWithPrimaryTensor:v696 secondaryTensor:v685 name:v260];

      v17 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v13 inputIndex:a5 name:v10];
      goto LABEL_110;
    case 0x31uLL:
      v462 = v703;
      v463 = [(MPSGraphOperation *)self inputTensors];
      v698 = v462;
      [v463 objectAtIndexedSubscript:a5];

      v464 = [(MPSGraphOperation *)self inputTensors];
      v465 = [v464 objectAtIndexedSubscript:a5];

      if (v465 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v466 = objc_loadWeakRetained(&self->super._graph);
      v679 = [(MPSGraphOperation *)self inputTensors];
      v467 = [v679 objectAtIndexedSubscript:0];
      v468 = [(MPSGraphOperation *)self inputTensors];
      [v468 objectAtIndexedSubscript:1];
      if (a5)
        v469 = {;
        v470 = MEMORY[0x1E696AEC0];
        v471 = [(MPSGraphOperation *)self name];
        v472 = [v470 stringWithFormat:@"%@/%@/lessThanOrEqualTo", v10, v471];
        v687 = [v466 lessThanOrEqualToWithPrimaryTensor:v467 secondaryTensor:v469 name:v472];
      }

      else
        v633 = {;
        v634 = MEMORY[0x1E696AEC0];
        v635 = [(MPSGraphOperation *)self name];
        v636 = [v634 stringWithFormat:@"%@/%@/greaterThan", v10, v635];
        v687 = [v466 greaterThanWithPrimaryTensor:v467 secondaryTensor:v633 name:v636];
      }

      v473 = objc_loadWeakRetained(&self->super._graph);
      v474 = MEMORY[0x1E696AEC0];
      v475 = [(MPSGraphOperation *)self name];
      v476 = [v474 stringWithFormat:@"%@/%@/multiplication", v10, v475];
      v13 = [v473 multiplicationWithPrimaryTensor:v698 secondaryTensor:v687 name:v476];

      v17 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v13 inputIndex:a5 name:v10];
      goto LABEL_110;
    case 0x3EuLL:
      v677 = v703;
      v209 = [(MPSGraphOperation *)self inputTensors];
      [v209 objectAtIndexedSubscript:a5];

      v210 = [(MPSGraphOperation *)self inputTensors];
      v211 = [v210 objectAtIndexedSubscript:a5];

      if (v211 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v212 = objc_loadWeakRetained(&self->super._graph);
      v213 = [(MPSGraphOperation *)self inputTensors];
      v214 = [v213 objectAtIndexedSubscript:0];
      v215 = MEMORY[0x1E696AEC0];
      v216 = [(MPSGraphOperation *)self name];
      v217 = [v215 stringWithFormat:@"%@/%@/square", v10, v216];
      v694 = [v212 squareWithTensor:v214 name:v217];

      v218 = objc_loadWeakRetained(&self->super._graph);
      v219 = [(MPSGraphOperation *)self inputTensors];
      v220 = [v219 objectAtIndexedSubscript:1];
      v221 = MEMORY[0x1E696AEC0];
      v222 = [(MPSGraphOperation *)self name];
      v223 = [v221 stringWithFormat:@"%@/%@/square_1", v10, v222];
      v684 = [v218 squareWithTensor:v220 name:v223];

      v224 = objc_loadWeakRetained(&self->super._graph);
      v225 = MEMORY[0x1E696AEC0];
      v226 = [(MPSGraphOperation *)self name];
      v227 = [v225 stringWithFormat:@"%@/%@/add", v10, v226];
      v228 = [v224 additionWithPrimaryTensor:v694 secondaryTensor:v684 name:v227];

      v229 = objc_loadWeakRetained(&self->super._graph);
      v672 = v228;
      v230 = [(MPSGraphOperation *)self inputTensors];
      if (a5)
      {
        v231 = [v230 objectAtIndexedSubscript:1];
        v232 = MEMORY[0x1E696AEC0];
        v233 = [(MPSGraphOperation *)self name];
        v234 = [v232 stringWithFormat:@"%@/%@/divide", v10, v233];
        v235 = [v229 divisionWithPrimaryTensor:v231 secondaryTensor:v228 name:v234];

        v236 = objc_loadWeakRetained(&self->super._graph);
        v237 = MEMORY[0x1E696AEC0];
        v238 = [(MPSGraphOperation *)self name];
        v239 = [v237 stringWithFormat:@"%@/%@/multiplication", v10, v238];
        v240 = [v236 multiplicationWithPrimaryTensor:v677 secondaryTensor:v235 name:v239];

        v241 = objc_loadWeakRetained(&self->super._graph);
        v242 = MEMORY[0x1E696AEC0];
        v243 = [(MPSGraphOperation *)self name];
        v244 = [v242 stringWithFormat:@"%@/%@/negative", v10, v243];
        v245 = [v241 negativeWithTensor:v240 name:v244];
      }

      else
      {
        v638 = [v230 objectAtIndexedSubscript:0];
        v639 = MEMORY[0x1E696AEC0];
        v640 = [(MPSGraphOperation *)self name];
        v641 = [v639 stringWithFormat:@"%@/%@/divide", v10, v640];
        v235 = [v229 divisionWithPrimaryTensor:v638 secondaryTensor:v228 name:v641];

        v241 = objc_loadWeakRetained(&self->super._graph);
        v642 = MEMORY[0x1E696AEC0];
        v243 = [(MPSGraphOperation *)self name];
        v244 = [v642 stringWithFormat:@"%@/%@/multiplication", v10, v243];
        v245 = [v241 multiplicationWithPrimaryTensor:v677 secondaryTensor:v235 name:v244];
        v240 = v677;
      }

      v11 = [(MPSGraphArithmeticOp *)self broadcastGradWithOutputGradient:v245 inputIndex:a5 name:v10];

LABEL_64:
      goto LABEL_112;
    case 0x44uLL:
      if (a5 == 1)
      {
        v13 = objc_loadWeakRetained(&self->super._graph);
        v17 = [v13 imaginaryPartOfTensor:v703 name:v10];
LABEL_110:
        v11 = v17;
LABEL_111:

        goto LABEL_112;
      }

      if (!a5)
      {
        v13 = objc_loadWeakRetained(&self->super._graph);
        v17 = [v13 realPartOfTensor:v703 name:v10];
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
      v575 = v703;
      v576 = [(MPSGraphOperation *)self inputTensors];
      [v576 objectAtIndexedSubscript:a5];

      v577 = [(MPSGraphOperation *)self inputTensors];
      v578 = [v577 objectAtIndexedSubscript:a5];

      if (v578 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (a5 == 1)
      {
        v644 = objc_loadWeakRetained(&self->super._graph);
        v691 = [v644 constantWithScalar:&unk_1F5B77228 shape:268435488 dataType:0.0];

        v701 = objc_loadWeakRetained(&self->super._graph);
        v580 = [(MPSGraphOperation *)self inputTensors];
        v581 = v691;
        v582 = [v580 objectAtIndexedSubscript:2];
        v645 = MEMORY[0x1E696AEC0];
        v584 = [(MPSGraphOperation *)self name];
        v585 = [v645 stringWithFormat:@"%@/%@/select", v10, v584];
        v586 = [v701 selectWithPredicateTensor:v582 truePredicateTensor:v575 falsePredicateTensor:v691 name:v585];
        goto LABEL_119;
      }

      if (!a5)
      {
        v579 = objc_loadWeakRetained(&self->super._graph);
        v690 = [v579 constantWithScalar:&unk_1F5B77210 shape:268435488 dataType:0.0];

        v701 = objc_loadWeakRetained(&self->super._graph);
        v580 = [(MPSGraphOperation *)self inputTensors];
        v581 = v690;
        v582 = [v580 objectAtIndexedSubscript:2];
        v583 = MEMORY[0x1E696AEC0];
        v584 = [(MPSGraphOperation *)self name];
        v585 = [v583 stringWithFormat:@"%@/%@/select", v10, v584];
        v586 = [v701 selectWithPredicateTensor:v582 truePredicateTensor:v690 falsePredicateTensor:v575 name:v585];
LABEL_119:
        v646 = v586;

        v647 = [(MPSGraphArithmeticOp *)self broadcastGradTernaryWithOutputGradient:v646 inputIndex:a5 name:v10];

        v11 = v647;
        goto LABEL_112;
      }

      v11 = 0;

LABEL_112:

      return v11;
    case 0x46uLL:
      v681 = v703;
      v546 = [(MPSGraphOperation *)self inputTensors];
      [v546 objectAtIndexedSubscript:a5];

      v547 = [(MPSGraphOperation *)self inputTensors];
      v548 = [v547 objectAtIndexedSubscript:a5];

      if (v548 != v702 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v549 = objc_loadWeakRetained(&self->super._graph);
      v689 = [v549 constantWithScalar:&unk_1F5B77240 shape:268435488 dataType:0.0];

      v673 = objc_loadWeakRetained(&self->super._graph);
      if (a5 == 1)
      {
        v668 = [(MPSGraphOperation *)self inputTensors];
        v648 = [v668 objectAtIndexedSubscript:0];
        v649 = [(MPSGraphOperation *)self inputTensors];
        v650 = [v649 objectAtIndexedSubscript:1];
        v651 = MEMORY[0x1E696AEC0];
        v652 = [(MPSGraphOperation *)self name];
        v653 = [v651 stringWithFormat:@"%@/%@/lessThan", v10, v652];
        v700 = [v673 lessThanWithPrimaryTensor:v648 secondaryTensor:v650 name:v653];

        v566 = objc_loadWeakRetained(&self->super._graph);
        v654 = MEMORY[0x1E696AEC0];
        v568 = [(MPSGraphOperation *)self name];
        v655 = v654;
        v571 = v681;
        v574 = v689;
        v569 = [v655 stringWithFormat:@"%@/%@/select", v10, v568];
        v656 = [v566 selectWithPredicateTensor:v700 truePredicateTensor:v681 falsePredicateTensor:v689 name:v569];
      }

      else
      {
        if (!a5)
        {
          v665 = [(MPSGraphOperation *)self inputTensors];
          v550 = [v665 objectAtIndexedSubscript:0];
          v551 = [(MPSGraphOperation *)self inputTensors];
          v552 = [v551 objectAtIndexedSubscript:1];
          v553 = MEMORY[0x1E696AEC0];
          v554 = [(MPSGraphOperation *)self name];
          v555 = [v553 stringWithFormat:@"%@/%@/lessThan", v10, v554];
          v700 = [v673 lessThanWithPrimaryTensor:v550 secondaryTensor:v552 name:v555];

          v556 = objc_loadWeakRetained(&self->super._graph);
          v666 = [(MPSGraphOperation *)self inputTensors];
          v557 = [v666 objectAtIndexedSubscript:0];
          v558 = [(MPSGraphOperation *)self inputTensors];
          v559 = [v558 objectAtIndexedSubscript:2];
          v560 = MEMORY[0x1E696AEC0];
          v561 = [(MPSGraphOperation *)self name];
          v562 = [v560 stringWithFormat:@"%@/%@/greaterThan", v10, v561];
          v674 = [v556 lessThanWithPrimaryTensor:v557 secondaryTensor:v559 name:v562];

          v563 = objc_loadWeakRetained(&self->super._graph);
          v564 = MEMORY[0x1E696AEC0];
          v565 = [(MPSGraphOperation *)self name];
          v566 = v674;
          v567 = [v564 stringWithFormat:@"%@/%@/logicalOR", v10, v565];
          v568 = [v563 logicalORWithPrimaryTensor:v700 secondaryTensor:v674 name:v567];

          v569 = objc_loadWeakRetained(&self->super._graph);
          v570 = MEMORY[0x1E696AEC0];
          v571 = [(MPSGraphOperation *)self name];
          v572 = [v570 stringWithFormat:@"%@/%@/select", v10, v571];
          v573 = [v569 selectWithPredicateTensor:v568 truePredicateTensor:v689 falsePredicateTensor:v681 name:v572];

          v574 = v689;
          goto LABEL_124;
        }

        v669 = [(MPSGraphOperation *)self inputTensors];
        v657 = [v669 objectAtIndexedSubscript:0];
        v658 = [(MPSGraphOperation *)self inputTensors];
        v659 = [v658 objectAtIndexedSubscript:2];
        v660 = MEMORY[0x1E696AEC0];
        v661 = [(MPSGraphOperation *)self name];
        v662 = [v660 stringWithFormat:@"%@/%@/greaterThan", v10, v661];
        v700 = [v673 lessThanWithPrimaryTensor:v657 secondaryTensor:v659 name:v662];

        v566 = objc_loadWeakRetained(&self->super._graph);
        v663 = MEMORY[0x1E696AEC0];
        v568 = [(MPSGraphOperation *)self name];
        v664 = v663;
        v571 = v681;
        v574 = v689;
        v569 = [v664 stringWithFormat:@"%@/%@/select", v10, v568];
        v656 = [v566 selectWithPredicateTensor:v700 truePredicateTensor:v681 falsePredicateTensor:v689 name:v569];
      }

      v573 = v656;
LABEL_124:

      v11 = [(MPSGraphArithmeticOp *)self broadcastGradTernaryWithOutputGradient:v573 inputIndex:a5 name:v10];

      goto LABEL_112;
    default:
      goto LABEL_112;
  }
}

@end